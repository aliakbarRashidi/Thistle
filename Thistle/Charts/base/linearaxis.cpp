#include "../base/linearaxis.h"
#include "private/linearaxis_p.h"
#include "../../Core/global.h"

#include <qmath.h>

namespace Thistle
{

LinearAxis::LinearAxis(): AbstractAxis( new LinearAxisPrivate() )
{}


LinearAxis::~LinearAxis()
{}


void LinearAxis::setLine( const QLineF& newLine )
{
	Q_D( LinearAxis );
	d->line = newLine;
}


QPointF LinearAxis::origin() const
{
	const Q_D( LinearAxis );
	return d->line.p1();
}


const QLineF& LinearAxis::line() const
{
	const Q_D( LinearAxis );
	return d->line;
}


QPointF LinearAxis::pinpoint( qreal value ) const
{
	const Q_D( LinearAxis );
	qreal e = qreal( this->maximum() - this->minimum() );
	qreal ratio = ( value - this->minimum() ) / e;
	return d->line.pointAt( ratio );
}

}
