Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC4E322BE9
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Feb 2021 15:07:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEYM1-0002CX-7G; Tue, 23 Feb 2021 14:07:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mst@redhat.com>) id 1lEYLz-0002CC-VV
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Feb 2021 14:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQXkLq7Pk1AieJ/qPtLDPkEAESFIg90QpbPElIk75kQ=; b=gvPY7CTvSzdlSJwOizBYiSTG45
 db3o/R95r4w22AbNabVBpyKazrK3eLpbD72CGobN7zB/xaD+OpiQ8SHWhfISwExXVj9vKF66kafIH
 1tG2XWTlGZPGKh9+1oyv5ZffzZ5dE7Ff40HcPeKC9PeyFfZIzcZ32Su963GM4RboRhIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hQXkLq7Pk1AieJ/qPtLDPkEAESFIg90QpbPElIk75kQ=; b=DF/DlH66xcJcf+nOrcFumK/7Kh
 1LZSqiMlLGpRE6o2bkPAip+NwN2glEKZ9wA3HEi6fPebYzli5O84HXHeqkfLuTZWflxNt/22l1U+U
 SBUSfvEog9MqgFe0maCLAz4ZD+xdXYKE/2lgyFjRXixinq74Qu7EcTa3o7xpLpzDYWAM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lEYLu-0006py-Iy
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Feb 2021 14:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614089264;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hQXkLq7Pk1AieJ/qPtLDPkEAESFIg90QpbPElIk75kQ=;
 b=Sfojzrt9fxVgFc7itvoaDeH1J2DSi1yOEElD+AU/LRTpdEJVICceMJR8PUFgwpFyak1ixe
 Z+oATwwxYBbODQGeExMnJkC9ATZfx7WENBw+LiRE7Vdogs9CbIqinaR0VauhbI7kWjAT+/
 ES6miNT4VraDuEXojvDtOiZ1qYIPtkE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-173-p4jEKADUMji67Cq8zSCvig-1; Tue, 23 Feb 2021 09:07:36 -0500
X-MC-Unique: p4jEKADUMji67Cq8zSCvig-1
Received: by mail-wr1-f71.google.com with SMTP id e11so7294856wro.19
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Feb 2021 06:07:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hQXkLq7Pk1AieJ/qPtLDPkEAESFIg90QpbPElIk75kQ=;
 b=UfyXiu1DF0xdahbXGr2KndpokVZn+h2odqZJ8zalV0WIhc9oMdwkr+Uo1i3dAb9xKR
 iVKthndolWB0xyAUEXmRg+VT+TbEA6xAKHbEAecj/M2LNRRTOeDMgQlhcoaBmDYl8Bo0
 ImAieHBh2QKcr/5S06BseKm1+dO8zpKQ3z0zyn1i2agbz6AE68TFqlPJLCbd5e1F7hFp
 HnEfEoh18lhjjiZrWg9ZapPOum1yGz/2T7j1qiikM33M/hVlIF6JrvYZXUUaNeHhVKK2
 6+u0wqIZ7hO9jeVg+4TqcsoBhGHdYnaJhvW/caHYcssu1glhXKFRoXXdjvBwmtSic4Fu
 x4vw==
X-Gm-Message-State: AOAM532fz89Y8NMw4hNcQKKhhmYzUQ6pGTQ5jx0m28dPX26f2ZOVApCZ
 P0SdqftN/Bq5Vs0tXE1E8U/xO9MYngFEMrVrKv+1MwfsM/ltqB3R5XYHr98KmKecFashp3rcYA2
 myCR0aTGeNqa2HOnN/9FUPthaic708OfZPv0=
X-Received: by 2002:a5d:58ed:: with SMTP id f13mr6426093wrd.255.1614089255619; 
 Tue, 23 Feb 2021 06:07:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzQrUt9xGueVk6YzZmPITfwzczBPc+cadyvtDGTQ2fTE9rqxO/lW3r35pwA/KtFzoHPiHxJNA==
X-Received: by 2002:a5d:58ed:: with SMTP id f13mr6426057wrd.255.1614089255284; 
 Tue, 23 Feb 2021 06:07:35 -0800 (PST)
Received: from redhat.com (bzq-79-180-2-31.red.bezeqint.net. [79.180.2.31])
 by smtp.gmail.com with ESMTPSA id t14sm292107wru.64.2021.02.23.06.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Feb 2021 06:07:34 -0800 (PST)
Date: Tue, 23 Feb 2021 09:07:31 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20210223090531-mutt-send-email-mst@kernel.org>
References: <20200918213436.GA3520@redhat.com> <2848338.ij5OB8EVuP@silver>
 <20210222181159.6b274945@bahia.lan> <6115734.fQeFoySBn5@silver>
MIME-Version: 1.0
In-Reply-To: <6115734.fQeFoySBn5@silver>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lEYLu-0006py-Iy
Subject: Re: [V9fs-developer] Can not set high msize with virtio-9p (Was:
 Re: virtiofs vs 9p performance)
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
Cc: "cdupontd@redhat.com" <cdupontd@redhat.com>, "Venegas Munoz,
 Jose Carlos" <jose.carlos.venegas.munoz@intel.com>, qemu-devel@nongnu.org,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 virtio-fs-list <virtio-fs@redhat.com>, Greg Kurz <groug@kaod.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, v9fs-developer@lists.sourceforge.net,
 "Shinde, Archana M" <archana.m.shinde@intel.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Feb 23, 2021 at 02:39:48PM +0100, Christian Schoenebeck wrote:
> On Montag, 22. Februar 2021 18:11:59 CET Greg Kurz wrote:
> > On Mon, 22 Feb 2021 16:08:04 +0100
> > Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:
> > 
> > [...]
> > 
> > > I did not ever have a kernel crash when I boot a Linux guest with a 9pfs
> > > root fs and 100 MiB msize.
> > 
> > Interesting.
> > 
> > > Should we ask virtio or 9p Linux client maintainers if
> > > they can add some info what this is about?
> > 
> > Probably worth to try that first, even if I'm not sure anyone has a
> > answer for that since all the people who worked on virtio-9p at
> > the time have somehow deserted the project.
> 
> Michael, Dominique,
> 
> we are wondering here about the message size limitation of just 5 kiB in the 
> 9p Linux client (using virtio transport) which imposes a performance 
> bottleneck, introduced by this kernel commit:
> 
> commit b49d8b5d7007a673796f3f99688b46931293873e
> Author: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
> Date:   Wed Aug 17 16:56:04 2011 +0000
> 
>     net/9p: Fix kernel crash with msize 512K
>     
>     With msize equal to 512K (PAGE_SIZE * VIRTQUEUE_NUM), we hit multiple
>     crashes. This patch fix those.
>     
>     Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
>     Signed-off-by: Eric Van Hensbergen <ericvh@gmail.com>

Well the change I see is:

-       .maxsize = PAGE_SIZE*VIRTQUEUE_NUM,
+       .maxsize = PAGE_SIZE * (VIRTQUEUE_NUM - 3),


so how come you say it changes 512K to 5K?
Looks more like 500K to me.

> Is this a fundamental maximum message size that cannot be exceeded with virtio 
> in general or is there another reason for this limit that still applies?
> 
> Full discussion:
> https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg06343.html
> 
> > > > > As the kernel code sais trans_mod->maxsize, maybe its something in
> > > > > virtio
> > > > > on qemu side that does an automatic step back for some reason. I don't
> > > > > see something in the 9pfs virtio transport driver
> > > > > (hw/9pfs/virtio-9p-device.c on QEMU side) that would do this, so I
> > > > > would
> > > > > also need to dig deeper.
> > > > > 
> > > > > Do you have some RAM limitation in your setup somewhere?
> > > > > 
> > > > > For comparison, this is how I started the VM:
> > > > > 
> > > > > ~/git/qemu/build/qemu-system-x86_64 \
> > > > > -machine pc,accel=kvm,usb=off,dump-guest-core=off -m 2048 \
> > > > > -smp 4,sockets=4,cores=1,threads=1 -rtc base=utc \
> > > > > -boot strict=on -kernel
> > > > > /home/bee/vm/stretch/boot/vmlinuz-4.9.0-13-amd64 \
> > > > > -initrd /home/bee/vm/stretch/boot/initrd.img-4.9.0-13-amd64 \
> > > > > -append 'root=svnRoot rw rootfstype=9p
> > > > > rootflags=trans=virtio,version=9p2000.L,msize=104857600,cache=mmap
> > > > > console=ttyS0' \
> > > > 
> > > > First obvious difference I see between your setup and mine is that
> > > > you're mounting the 9pfs as root from the kernel command line. For
> > > > some reason, maybe this has an impact on the check in p9_client_create()
> > > > ?
> > > > 
> > > > Can you reproduce with a scenario like Vivek's one ?
> > > 
> > > Yep, confirmed. If I boot a guest from an image file first and then try to
> > > manually mount a 9pfs share after guest booted, then I get indeed that
> > > msize capping of just 512 kiB as well. That's far too small. :/
> > 
> > Maybe worth digging :
> > - why no capping happens in your scenario ?
> 
> Because I was wrong.
> 
> I just figured even in the 9p rootfs scenario it does indeed cap msize to 5kiB 
> as well. The output of /etc/mtab on guest side was fooling me. I debugged this 
> on 9p server side and the Linux 9p client always connects with a max. msize of 
> 5 kiB, no matter what you do.
> 
> > - is capping really needed ?
> > 
> > Cheers,
> 
> That's a good question and probably depends on whether there is a limitation 
> on virtio side, which I don't have an answer for. Maybe Michael or Dominique 
> can answer this.
> 
> Best regards,
> Christian Schoenebeck
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
