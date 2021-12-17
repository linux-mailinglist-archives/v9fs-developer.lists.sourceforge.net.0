Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA986479506
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Dec 2021 20:46:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1myJAz-00040W-KT; Fri, 17 Dec 2021 19:45:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1myJAt-000406-Ul
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Dec 2021 19:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Igx5pT1HH94P5Uv419NYopECcz8KKF8yUzXDMo5vI7s=; b=JOEMNkx3vQbRR/R2QVoGlZMclU
 ILxvPFabv6J/yiptV28aikFMbSWG8E+8yzsgNWRZ4aj2M1CzEqwB7M+VlQnmssxhSS6yMIQCV9mtK
 dzswb1u228+WLRToFKo5D3oZt1VmCa9q5m1JY8GlznLAAhVRTI4vg9wg/aB09E40km7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Igx5pT1HH94P5Uv419NYopECcz8KKF8yUzXDMo5vI7s=; b=K9Eb9fHBUsEj1qoMkPuiV16deR
 68f0v9IRSYvfHujnxJ0R3MbNqbf+Ranp7z4P/LgyrAK6GUE0E4TmY+XuLqKCvIBUeOPpZD87xEe+W
 /R7WbtO8epTVlxqd9HBgR1cv5ODPEZ1fzYduECMJhZhs4bVIf9lciz+HJq8HvW9iBMBE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myJAt-001EZ0-4p
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Dec 2021 19:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639770345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Igx5pT1HH94P5Uv419NYopECcz8KKF8yUzXDMo5vI7s=;
 b=Q+gTnxqJ8XuIueBtLXp7R3iB/ZymmmJAXIUGY+fAup2rIpE+hxgN+Gilv5i3HvWYJtzX0X
 GTwjyHXr3soTBLC6jlEv+CchlV7WriWK0nBas0V5G99jKBDv8RDjS5h8gBHgiwgz0lHm8G
 A7oiNproLV4fqv+HJDdCFKj2I940hqI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-651-i9MqQCawOQW2ZcZhOUMmqQ-1; Fri, 17 Dec 2021 14:45:41 -0500
X-MC-Unique: i9MqQCawOQW2ZcZhOUMmqQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D0271006AA6;
 Fri, 17 Dec 2021 19:45:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 558DB5D6B1;
 Fri, 17 Dec 2021 19:45:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <71635415237b406c5fe9e568aae8dd148445a72b.camel@kernel.org>
References: <71635415237b406c5fe9e568aae8dd148445a72b.camel@kernel.org>
 <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967105456.1823006.14730395299835841776.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <2038059.1639770326.1@warthog.procyon.org.uk>
Date: Fri, 17 Dec 2021 19:45:26 +0000
Message-ID: <2038060.1639770326@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > > + case
 FSCACHE_COOKIE_STATE_RELINQUISHING:
 > > + case FSCACHE_COOKIE_STATE_WITHDRAWING: > > + if (cookie->cache_priv)
 { > > + spin_unlock(&cookie->lock); > > + cookie->volume->cache->ops->withdraw
 [...] Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1myJAt-001EZ0-4p
Subject: Re: [V9fs-developer] [PATCH v3 17/68] fscache: Implement simple
 cookie state machine
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> > +	case FSCACHE_COOKIE_STATE_RELINQUISHING:
> > +	case FSCACHE_COOKIE_STATE_WITHDRAWING:
> > +		if (cookie->cache_priv) {
> > +			spin_unlock(&cookie->lock);
> > +			cookie->volume->cache->ops->withdraw_cookie(cookie);
> > +			spin_lock(&cookie->lock);
> > +		}
> > +
> > +		switch (state) {
> > +		case FSCACHE_COOKIE_STATE_RELINQUISHING:
> > +			fscache_see_cookie(cookie, fscache_cookie_see_relinquish);
> > +			fscache_unhash_cookie(cookie);
> > +			__fscache_set_cookie_state(cookie,
> > +						   FSCACHE_COOKIE_STATE_DROPPED);
> > +			wake = true;
> > +			goto out;
> > +		case FSCACHE_COOKIE_STATE_WITHDRAWING:
> > +			fscache_see_cookie(cookie, fscache_cookie_see_withdraw);
> > +			break;
> > +		default:
> > +			BUG();
> > +		}
> > +
> 
> Ugh, the nested switch here is a bit hard to follow. It makes it seem
> like the state could change due to the withdraw_cookie and you're
> checking it again, but it doesn't do that.
> 
> This would be clearer if you just duplicated the withdraw_cookie stanza
> for both states and moved the stuff below here to a helper or to a new
> goto block.

There are actually three states, but one's added in a later patch.  It
probably does make sense to split the RELINQ state from the other two.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
