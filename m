Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B9C3CFFFD
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Jul 2021 19:15:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m5tL2-0005bg-Op; Tue, 20 Jul 2021 17:15:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <berrange@redhat.com>) id 1m5tL1-0005bS-05
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Jul 2021 17:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S2XX9lpMjOx+a8wD0eU0fiNqZ95RvwIwCS2c+XaTpXs=; b=a7z0dR0ucsqf4Ye7KG1/rPGOLd
 PPacqRL9Lv3OcCVFU8BW6oL0mGY+/zixDH+pdpskbzxdyerHpS2qjllJNAKNRooW/Lne0q43cMi2l
 b0SQxm3Q9EkLb+MkGKNYXZP5t4gG8dPtg/7w93taBJEZekY/h8s4naDubuIPm68+aySo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S2XX9lpMjOx+a8wD0eU0fiNqZ95RvwIwCS2c+XaTpXs=; b=JUzt+/lzJ8GRgHoY8kICgqJ947
 0zLGFyHMUAIIFfqgQM8eMhkplpgXaihPGCI2gpd7ilyOExSh6TfUA+d8+mCV++XslpZJ9biqkuCi1
 GOjm3WASJ89YVG53NUsy24gLj7AmzcpKB9fhlOUKbttigQ9Cc+RW3DVajSNqbQl0ohdw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m5tKp-00014Y-UI
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Jul 2021 17:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626801305;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=S2XX9lpMjOx+a8wD0eU0fiNqZ95RvwIwCS2c+XaTpXs=;
 b=bzUEsIAM2IP4NLxgWvXBWs/u+0HAD8/3z+mqZg1u45JmB7h8FGHiy3SiGcVBJPh858cubw
 Xmom+x977GfhMZARe2bnejFoR/Lqu8P2UPIoCoOssi7DejAv5GdMmzOHzF6GAcB8DSC/uQ
 cNWDnIaRvhq24ZP0e+mw27rvls4ZwWI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-9nAj7q00O3eAurKxb3rRRw-1; Tue, 20 Jul 2021 13:14:59 -0400
X-MC-Unique: 9nAj7q00O3eAurKxb3rRRw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A00D0800C78;
 Tue, 20 Jul 2021 17:14:57 +0000 (UTC)
Received: from redhat.com (ovpn-113-31.ams2.redhat.com [10.36.113.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 30D47101E24A;
 Tue, 20 Jul 2021 17:14:55 +0000 (UTC)
Date: Tue, 20 Jul 2021 18:14:53 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Greg Kurz <groug@kaod.org>
Message-ID: <YPcEjQ7ZQhm3WSyx@redhat.com>
References: <2672527.YDO70zjxOC@silver>
 <cc5323fd-f4b2-5180-80f1-387ce712341e@cs.ucla.edu>
 <YPZs4YGVBy92zAtP@album.bayer.uni.cx> <2830932.JSSdzbctmW@silver>
 <20210720163701.78e68147@bahia.lan>
 <20210720165803.19b85cc9@bahia.lan>
MIME-Version: 1.0
In-Reply-To: <20210720165803.19b85cc9@bahia.lan>
User-Agent: Mutt/2.0.7 (2021-05-04)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m5tKp-00014Y-UI
Subject: Re: [V9fs-developer] tar does not support partial reads
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <qemu_oss@crudebyte.com>, bug-tar@gnu.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jul 20, 2021 at 04:58:03PM +0200, Greg Kurz wrote:
> On Tue, 20 Jul 2021 16:37:01 +0200
> Greg Kurz <groug@kaod.org> wrote:
> 
> > On Tue, 20 Jul 2021 13:26:50 +0200
> > 
> > Looking more closely at what POSIX says about O_NONBLOCK:
> > 
> > When attempting to read a file (other than a pipe or FIFO) that supports non-blocking reads and has no data currently available:
> > 
> >     - If O_NONBLOCK is set, read() shall return -1 and set errno to [EAGAIN].
> > 
> >     - If O_NONBLOCK is clear, read() shall block the calling thread until some data becomes available.
> > 
> >     - The use of the O_NONBLOCK flag has no effect if there is some data available.
> > 
> > and
> > 
> > [EAGAIN]
> >     The file is neither a pipe, nor a FIFO, nor a socket, the O_NONBLOCK flag is set for the file descriptor, and the thread would be delayed in the read operation.
> > 
> > The case of the reported issue is thus "O_NONBLOCK is set and some data
> > is available", which should lead O_NONBLOCK to be ignored, i.e. switch
> > to a full read instead of propagating the short read IIUC.
> > 
> > Makes sense ?
> > 
> 
> I was thinking to something like that (not tested yet):
> 
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -389,8 +389,22 @@ v9fs_file_read_iter(struct kiocb *iocb, struct iov_iter *t>
>         p9_debug(P9_DEBUG_VFS, "count %zu offset %lld\n",
>                  iov_iter_count(to), iocb->ki_pos);
>  
> -       if (iocb->ki_filp->f_flags & O_NONBLOCK)
> +       if (iocb->ki_filp->f_flags & O_NONBLOCK) {
> +               size_t count = iov_iter_count(to);
> +
>                 ret = p9_client_read_once(fid, iocb->ki_pos, to, &err);
> +               if (!ret)
> +                       return err;
> +
> +               /*
> +                * POSIX requires to ignore O_NONBLOCK if some data is
> +                * already available.
> +                */
> +               if (ret != count) {
> +                       iocb->ki_pos += ret;
> +                       ret = p9_client_read(fid, iocb->ki_pos, to, &err);
> +               }
> +       }
>         else
>                 ret = p9_client_read(fid, iocb->ki_pos, to, &err);
>         if (!ret)

Yes, this looks like it would better match the semantics documented
for O_NONBLOCK and expected by tar.

Regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
