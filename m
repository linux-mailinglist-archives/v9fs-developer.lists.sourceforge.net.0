Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A460748679F
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Jan 2022 17:27:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5Vbm-0002GR-Uz; Thu, 06 Jan 2022 16:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n5Vbm-0002GL-FB
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 16:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bqGE+ogCsKbt8jpL4JhbwafMN3V+xGn5LKE8WlKnEkY=; b=JHiMC+x70pHY/c+Js3m74bi36b
 iIF0l+iDaGttywk/Ui4FZ0UFl/CbRWcOvnJ/Aj3UzcjQtcbYx4EOiujKreF/V2RCodcGpE8GQI/Xi
 etlgu+kIPzrNB6bsP1V4nM+TE76hSb4DKf8POEYOm/8qS2pEHlmV2v822Ao2N+ZQknV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bqGE+ogCsKbt8jpL4JhbwafMN3V+xGn5LKE8WlKnEkY=; b=dALoTUnd5agUZCyVRaZljzWQqV
 PUgeAy7BmpLp9lWvNFmDWwTWc9jHChykjd2EyDwMu2erjONu5+dU36sG7Z8HD80BoY/iz4tukZbBm
 Y18U8elAUJPMppm/xYhdVSI9qAeoUoAQvdCsVi68qX4PmNfMJ1RGkaD+AQjNtZqFhD0k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5Vbh-004A8t-MA
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 16:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641486428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bqGE+ogCsKbt8jpL4JhbwafMN3V+xGn5LKE8WlKnEkY=;
 b=ce7pGtsfNZDeJO6s6JQ8CD3awfoUf57lnxst1+IWZcJL2BE7Qc+jDXV8kg+gMtf+rGyIue
 ujoYT1ZEOElqydN82qilJ9Y9dhxn3KpplbjkZj/+G/O4iwwbfqezhmb4GqY9MYVmxkoEIV
 iBRBIRHv7MXDrkSXSShikoeAPgvcj54=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-215-2bLqDce9NF-N5Qh7l0pIvA-1; Thu, 06 Jan 2022 11:27:04 -0500
X-MC-Unique: 2bLqDce9NF-N5Qh7l0pIvA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF7AD92500;
 Thu,  6 Jan 2022 16:27:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 26CED70D3D;
 Thu,  6 Jan 2022 16:26:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <043a206f03929c2667a465314144e518070a9b2d.camel@kernel.org>
References: <043a206f03929c2667a465314144e518070a9b2d.camel@kernel.org>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021525963.640689.9264556596205140044.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <2848130.1641486417.1@warthog.procyon.org.uk>
Date: Thu, 06 Jan 2022 16:26:57 +0000
Message-ID: <2848131.1641486417@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > > +/** > > + *
 fscache_note_page_release
 - Note that a netfs page got released > > + * @cookie: The cookie
 corresponding
 to the file > > + * > > + * Note that a page that has been copied to the
 cach [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1n5Vbh-004A8t-MA
Subject: Re: [V9fs-developer] [PATCH v4 28/68] fscache: Provide a function
 to note the release of a page
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

> > +/**
> > + * fscache_note_page_release - Note that a netfs page got released
> > + * @cookie: The cookie corresponding to the file
> > + *
> > + * Note that a page that has been copied to the cache has been released.  This
> > + * means that future reads will need to look in the cache to see if it's there.
> > + */
> > +static inline
> > +void fscache_note_page_release(struct fscache_cookie *cookie)
> > +{
> > +	if (cookie &&
> > +	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
> > +	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
> > +		clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
> > +}
> > +
> >  #endif /* _LINUX_FSCACHE_H */
> > 
> > 
> 
> Is this logic correct?
> 
> FSCACHE_COOKIE_HAVE_DATA gets set in cachefiles_write_complete, but will
> that ever be called on a cookie that has no data? Will we ever call
> cachefiles_write at all when there is no data to be written?

FSCACHE_COOKIE_NO_DATA_TO_READ is set if we have no data in the cache yet
(ie. the backing file lookup was negative, the file is 0 length or the cookie
got invalidated).  It means that we have no data in the cache, not that the
file is necessarily empty on the server.

FSCACHE_COOKIE_HAVE_DATA is set once we've stored data in the backing file.
From that point on, we have data we *could* read - however, it's covered by
pages in the netfs pagecache until at such time one of those covering pages is
released.

So if we've written data to the cache (HAVE_DATA) and there wasn't any data in
the cache when we started (NO_DATA_TO_READ), it may no longer be true that we
can skip reading from the cache.

Read skipping is done by cachefiles_prepare_read().

Note that I'm not doing tracking on a per-page basis, but only on a per-file
basis.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
