import UIKit
import CoreData

open class FetchedListController: ListViewController, NSFetchedResultsControllerDelegate {
	open func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) { tableView.beginUpdates() }
	
	open func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) { tableView.endUpdates() }
	
	open func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType) {
		switch type {
		case .insert:
			tableView.insertSections(IndexSet(integer: sectionIndex), with: .fade)
		case .delete:
			tableView.deleteSections(IndexSet(integer: sectionIndex), with: .fade)
		case .move:
			break
		case .update:
			break
		@unknown default:
			break
		}
	}
	
	open func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
		switch type {
		case .insert:
			tableView.insertRows(at: [newIndexPath!], with: .fade)
		case .delete:
			tableView.deleteRows(at: [indexPath!], with: .fade)
		case .update:
			tableView.reloadRows(at: [indexPath!], with: .fade)
		case .move:
			tableView.moveRow(at: indexPath!, to: newIndexPath!)
		@unknown default:
			break
		}
	}
}
