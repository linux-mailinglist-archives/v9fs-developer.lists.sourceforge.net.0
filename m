Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AD73D56C8
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Jul 2021 11:45:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m7xAV-0006K8-GZ; Mon, 26 Jul 2021 09:45:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1m7xAT-0006Jg-6p
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 09:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kBC7/7n7ieIR+PQocFWGsdEhjsiqMRhY14cESzBGes0=; b=faakMm3TmVPp2JEP3hEFV7ii6E
 4vwiXIsjkd3fSLbjNVYPl4buIaiHdV2jmrc/nhgYtqVDnk+q4n8AJbXQzHwfmPar3P+LfpSSIk+s/
 grSTwyJleX2OYYPGkQp0AgzKIaTwWe6BIz8G0hKjsDC7J6rP1x+ulzmAucGgueLwyinc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kBC7/7n7ieIR+PQocFWGsdEhjsiqMRhY14cESzBGes0=; b=GGH1HLNqQR19J0TA9Ozo8Z+Hci
 dXuqiL4G83uIcoWpAw+nM3rFOvkn1CqKt4FbHlU/bl3WtT3M+9m/3Nw9z9qDLQjoDrN++sPQPWCTm
 +faG5arF4O2BdHq3/q3xLSSy7SJNxvsdMpKQ79vUt8KUGuVJ1TIW3xW23hnZ5OZTW/lM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m7xAM-0004r1-Nm
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 09:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627292688;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kBC7/7n7ieIR+PQocFWGsdEhjsiqMRhY14cESzBGes0=;
 b=Wbg1ZZ/nBVA5QPydlyjv+cODt5GnjnN6p4kgEeGgESCTM3tpidvwr/oROn5GPcccnY6Urm
 W/bP/eyk0ilHQ2u27baIttOq/8jNCESFgc/lVSgzgcmq8eo+Mj3vqS0sZYAkNXqU2I3NEd
 PmghVWglsw5HuK1qaCK0Jxg70ACE3iw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-brLp6B6MMoKsBE9RNfYfwA-1; Mon, 26 Jul 2021 05:44:47 -0400
X-MC-Unique: brLp6B6MMoKsBE9RNfYfwA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A966F8799EF;
 Mon, 26 Jul 2021 09:44:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.22.16.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 61BB85C1D1;
 Mon, 26 Jul 2021 09:44:36 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <35ecb577315f486f1636b2316c2051ad004f6f7b.camel@redhat.com>
References: <35ecb577315f486f1636b2316c2051ad004f6f7b.camel@redhat.com>
 <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
 <162687508008.276387.6418924257569297305.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <812199.1627292675.1@warthog.procyon.org.uk>
Date: Mon, 26 Jul 2021 10:44:35 +0100
Message-ID: <812200.1627292675@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m7xAM-0004r1-Nm
Subject: Re: [V9fs-developer] [RFC PATCH 01/12] afs: Sort out symlink reading
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Miklos Szeredi <miklos@szeredi.hu>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> > -static int afs_symlink_readpage(struct page *page)
> > +static int afs_symlink_readpage(struct file *file, struct page *page)
> >  {
> >  	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
> >  	struct afs_read *fsreq;
> 
> 
> I wonder...would you be better served here by not using page_readlink
> for symlinks and instead use simple_get_link and roll your own readlink
> operation. It seems a bit more direct, and AFS seems to be the only
> caller of page_readlink.

Maybe.  At some point it will need to go through netfs_readpage() so that it
will get cached and maybe encrypted.  Possibly there should be a
netfs_readlink().  AFS directories too will at some point need to go through
netfs_readahead() or similar.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
