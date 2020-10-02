import React from 'react';
import AddExpenseDialog from "./AddExpenseDialog/AddExpenseDialog.jsx";
import OkCancelDialog from "../OkCancelDialog.jsx";
import {SortableHandle} from "react-sortable-hoc";

const DragHandle = SortableHandle(() => <i className='drag-icon fa fa-arrows'/>);
export default class CategoryGridIcon extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            showDialog: false,
            showDeleteDialog: false,
        };

        this.deleteCategory = this.deleteCategory.bind(this);
        this.toggleAddExpenseDialog = this.toggleAddExpenseDialog.bind(this);
    }

    /**
     * Deletes a category
     */
    deleteCategory(e) {
        this.props.delete(this.props.category.id);
        e.stopPropagation();
        this.setState({showDeleteDialog: false});
    }

    /**
     * Toggles the expense dialog
     */
    toggleAddExpenseDialog() {
        this.setState({showDialog: !this.state.showDialog})
    }

    render() {
        let style = {
            animationDuration: ((Math.random()) * (0.5 - 0.20) + 0.20) + 's',
        };

        return <li className={'CategoryGridIcon ' + (this.props.overlay ? ' editting' : '')} style={style}
                   onClick={this.toggleAddExpenseDialog}>

            {this.state.showDialog &&
            <AddExpenseDialog dismiss={this.toggleAddExpenseDialog} category={this.props.category}/>
            }

            {this.state.showDeleteDialog &&
            <OkCancelDialog dismiss={() => this.setState({showDeleteDialog: false})}
                            onOk={this.deleteCategory}>
                Are you sure to delete this category and all the related expenses ?
            </OkCancelDialog>
            }

            <i className={'cat ' + this.props.category.icon}/>
            <div className={'grid-overlay ' + (this.props.overlay ? 'showing fade-in' : '')}
                 onClick={(e) => e.stopPropagation()}>
                <div className="delete-button" onClick={(e) => {
                    this.setState({showDeleteDialog: true});
                    e.stopPropagation();
                }}>
                    <i className="fa fa-times"/>
                </div>
                <i className={'cat ' + this.props.category.icon}/>
                <DragHandle/>
            </div>
        </li>
    }
}
