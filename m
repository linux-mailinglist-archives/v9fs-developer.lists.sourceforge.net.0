Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D05433E2C
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 20:10:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mctZL-0000Hj-AZ; Tue, 19 Oct 2021 18:10:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@redhat.com>) id 1mctZK-0000Hc-4q
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 18:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uyH+62IZGe5k3hXewxa7M5XME07XE3dcFv2/Z+R3Ofw=; b=Nc9kkIkbSMIQ+6eIcbhWuPJuCa
 HZlD8EgJYqBuE7F23s5dXt6DB82j7zmNgi85ebWu94Vi8oi3OH4ZiJkKpyJD++2fPOyYVx6PcWHOj
 sqQheoTtLi5AHFKNhfXbhmeVifBJePi1idAruDGrSE3ba2XnDPNn1DnPGHrC6LAMVPbc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uyH+62IZGe5k3hXewxa7M5XME07XE3dcFv2/Z+R3Ofw=; b=RYWd3ElUUNILyJnFcq98dldJwS
 nEaDPtM6XhbDEwMWUZNicVyfQEX1D0uHfgXbftkYLT/eMKv7skTxDttduKVn9xsYw2JoSo9yDCpDF
 M2v5IZzNby9F0E/N360Mck/X7wiKw+vEwAsm71hlIFvt0wZv439RnrTgnLXR9fNo8gE8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mctZJ-0004hH-7L
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 18:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634667027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uyH+62IZGe5k3hXewxa7M5XME07XE3dcFv2/Z+R3Ofw=;
 b=dE5vNgcL9GSFhnpmLB0eKUeeLIy3SWE7tItcnYup9OYoJh1DDEy96qNnBn+IX3VrYVinPx
 e3py1o6C5omFM9I0f3nqRubijkvBO39XyA8HTFyHvzmPeZ09MR3SlJs62AtUBDgKth2dsk
 Wpp2q/VUHQQfFoCD4Rk9HcuH28sDavs=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-To2i9Nz8PJG2PYDSSIO1PQ-1; Tue, 19 Oct 2021 14:10:24 -0400
X-MC-Unique: To2i9Nz8PJG2PYDSSIO1PQ-1
Received: by mail-qk1-f199.google.com with SMTP id
 s18-20020a05620a255200b00433885d4fa7so574615qko.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 19 Oct 2021 11:10:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=uyH+62IZGe5k3hXewxa7M5XME07XE3dcFv2/Z+R3Ofw=;
 b=xQPRlL0HQtCwP4rTpv/7YgSnIqbh8VR023lGR+G0aMPpjxIhAGTrDIRso38mkFQ8Pv
 GPTBnJpceLhSi3MjKiiMGlb8xn/KlKId5YM/tlETpsJ7IXWVYla/MHF99nuGPZZFvzti
 1/wTyiAowInOan1ruQ4KETch2eXdXR5QhGKqFzsVPjUkQwjgRHhepJuhi5bwydfO8fFo
 b+ts7o1SpH0XnKcFkexmxrYvx70CIj9w4cbUlEYE1OduWTHPmKlMU+lhCvAkiuEQOOrU
 vOLdznc4UZfjEM4sy5IZIGgAkEm2A/MeGsThchW1OsF3WL0pqXH1SxXGrDr2qB8jQvvK
 AKIA==
X-Gm-Message-State: AOAM532idk+NrXQZF4V65S/gUn6GI919U+pdLm6+or8ZhVI5Gp3bDcU/
 VkMLfTAlwCGgwpsXzQd2y8Bac5/3jc8/Y/zdj/DyYyO4DMUuKz1dfi12wv7g6bCTsDNx9ZibXlq
 BtY553i01ajrVkH9FlQXhozSMY6yGHicpAEI=
X-Received: by 2002:ac8:5e50:: with SMTP id i16mr1624239qtx.183.1634667023612; 
 Tue, 19 Oct 2021 11:10:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJLuZ76jdHw2x6MhcBt3VhM1lWmjSPbiT7VtiIKCx4HQpHVFsAYKQMAnx32ObNTT+eVHMBzg==
X-Received: by 2002:ac8:5e50:: with SMTP id i16mr1624216qtx.183.1634667023452; 
 Tue, 19 Oct 2021 11:10:23 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id d23sm7885414qtm.11.2021.10.19.11.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 11:10:21 -0700 (PDT)
Message-ID: <39bc040e9bb88b47f386baa09ed4a508281ce7d6.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 19 Oct 2021 14:10:19 -0400
In-Reply-To: <163456865277.2614702.2064731306330022896.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456865277.2614702.2064731306330022896.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2021-10-18 at 15:50 +0100, David Howells wrote: >
 Provide an S_KERNEL_FILE inode flag that a kernel service, e.g. cachefiles,
 > can set to ward off other kernel services and drivers (including [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mctZJ-0004hH-7L
Subject: Re: [V9fs-developer] [PATCH 02/67] vfs: Provide S_KERNEL_FILE inode
 flag
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
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-10-18 at 15:50 +0100, David Howells wrote:
> Provide an S_KERNEL_FILE inode flag that a kernel service, e.g. cachefiles,
> can set to ward off other kernel services and drivers (including itself)
> from using files it is actively using.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
> 
>  include/linux/fs.h |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index e7a633353fd2..197493507744 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -2250,6 +2250,7 @@ struct super_operations {
>  #define S_ENCRYPTED	(1 << 14) /* Encrypted file (using fs/crypto/) */
>  #define S_CASEFOLD	(1 << 15) /* Casefolded file */
>  #define S_VERITY	(1 << 16) /* Verity file (using fs/verity/) */
> +#define S_KERNEL_FILE	(1 << 17) /* File is in use by the kernel (eg. fs/cachefiles) */
>  
>  /*
>   * Note that nosuid etc flags are inode-specific: setting some file-system
> 
> 

It'd be better to fold this in with the patch where the first user is
added. That would make it easier to see how you intend to use it.
-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
