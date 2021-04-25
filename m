Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B48036A7A2
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 15:59:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lafIe-0005Oi-VQ; Sun, 25 Apr 2021 13:59:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lafHF-0005LT-KH
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tkR6qD5kFFU7w0xAxQydFKnMtqNPY2fVynwZMz3s6nE=; b=X9vnBAC88Ro06XUspdJRZ9LDgx
 l3Np82zZEOvTbqYE4u8IhJ8834UeSJg3pC1Ifhcm4d7e9LTeywz7VQY2LFitEZ8zUaC2eJsnt7VZ1
 1t6VYFoqBYvorhakMcelvUv39bel87G4/EJUW0YmRZ3DpesfNiNLh9aJZui09BcORouw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tkR6qD5kFFU7w0xAxQydFKnMtqNPY2fVynwZMz3s6nE=; b=EGPOAhRbJZiMr+tVtB02EfiizR
 +YmxDarzOw8LDB/HzfhxcayPI/OJ1sjvJpzpPAOE42l/cNLeE/0ju5wWntSZUgcBkWMETPRnZcZqF
 zrp4PVkwR4QFzZHpWbRA9ODXQJs+ynpJvQnnEc42VRejWLvFaBJe+onQ8/sd3RYXnNu0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lafHA-0006uj-M4
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619359094;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tkR6qD5kFFU7w0xAxQydFKnMtqNPY2fVynwZMz3s6nE=;
 b=JhnZ1TKEEgWCt3o1EdjuI7K+vktgTR4odRqVkMFONHUC6ih94k//pcZPrTgxPR4izu2Zp5
 Ro719E8hR/cVwO3wZkcLnXZIqBQQfX5MIGs4kHbXBidYPCADLYb7v6/u2TK0tFigp/i5Tp
 hLjt9vKgPNQli8cur1PExMawV3O+z10=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-JCMVJMmJOvqSmTvfeS4GuA-1; Sun, 25 Apr 2021 09:58:12 -0400
X-MC-Unique: JCMVJMmJOvqSmTvfeS4GuA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95608DF8A3;
 Sun, 25 Apr 2021 13:58:10 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B9C06062F;
 Sun, 25 Apr 2021 13:58:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YIVrJT8GwLI0Wlgx@zeniv-ca.linux.org.uk>
References: <YIVrJT8GwLI0Wlgx@zeniv-ca.linux.org.uk>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
To: Al Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <3388474.1619359082.1@warthog.procyon.org.uk>
Date: Sun, 25 Apr 2021 14:58:02 +0100
Message-ID: <3388475.1619359082@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lafHA-0006uj-M4
Subject: Re: [V9fs-developer] [PATCH v7 01/31] iov_iter: Add ITER_XARRAY
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Steve French <sfrench@samba.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Al Viro <viro@zeniv.linux.org.uk> wrote:

> > +struct address_space;
> >  struct pipe_inode_info;
> >  
> >  struct kvec {
> 
> What is that chunk for?

Ah, that can go.  It used to be ITER_MAPPING.

> > +		}),
> > +		({
> > +		rem = copy_mc_to_page(v.bv_page, v.bv_offset,
> > +				      (from += v.bv_len) - v.bv_len, v.bv_len);
> > +		if (rem) {
> > +			curr_addr = (unsigned long) from;
> > +			bytes = curr_addr - s_addr - rem;
> > +			rcu_read_unlock();
> > +			return bytes;
> > +		}
> 
> That's broken, same way as kvec and bvec cases are in the same primitive.
> Iterator not advanced on failure halfway through.

Okay.  I just copied what ITER_BVEC does.  Should this be handled in
iterate_and_advance() rather than in the code snippets it takes as parameters?

But for the moment, I guess I should just add:

	i->iov_offset += bytes;

to all three (kvec, bvec and xarray)?

> > @@ -1246,7 +1349,8 @@ unsigned long iov_iter_alignment(const struct iov_iter *i)
> >  	iterate_all_kinds(i, size, v,
> >  		(res |= (unsigned long)v.iov_base | v.iov_len, 0),
> >  		res |= v.bv_offset | v.bv_len,
> > -		res |= (unsigned long)v.iov_base | v.iov_len
> > +		res |= (unsigned long)v.iov_base | v.iov_len,
> > +		res |= v.bv_offset | v.bv_len
> >  	)
> >  	return res;
> >  }
> 
> Hmm...  That looks like a really bad overkill - do you need anything beyond
> count and iov_offset in that case + perhaps "do we have the very last page"?
> IOW, do you need to iterate anything at all here?  What am I missing here?

Good point.  I wonder, even, if the alignment could just be set to 1.  There's
no kdoc description on the function that says what the result is meant to
represent.

> > @@ -1268,7 +1372,9 @@ unsigned long iov_iter_gap_alignment(const struct iov_iter *i)
> > ...
> Very limited use; it shouldn't be called for anything other than IOV_ITER case.
Should that just be cut down, then?

> > @@ -1849,7 +2111,12 @@ int iov_iter_for_each_range(struct iov_iter *i, size_t bytes,
> > ...
> 
> Would be easier to have that sucker removed first...

I could do that.  I'd rather not do that here since it hasn't sat in
linux-next, but since nothing uses it, but Linus might permit it.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
