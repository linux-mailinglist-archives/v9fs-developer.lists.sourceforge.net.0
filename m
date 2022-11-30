Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD60163D4E8
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 12:49:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0LaF-00042i-UU;
	Wed, 30 Nov 2022 11:48:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gnault@redhat.com>) id 1p0LaE-00042E-4e
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 11:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ew+rmcqxH2n7lRVyzxgZ+S2EuF0zHGkt1auf+7rBZUw=; b=RY85WlmYCEcH980yqqNXIjIv0q
 w6QJR0P/fbaxYa5f8VdJdQ4WdxiNzbx9B4B1s7vhX1VD4uZgADrQTitUfwSNQgwiPJJzlZQKnfqwY
 hDwH45CktVdPWK+QfljNPXuERFiCznpFK+XZ/9kDCB6dkCzyDzMuSDngJkw6OrHEG4aM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ew+rmcqxH2n7lRVyzxgZ+S2EuF0zHGkt1auf+7rBZUw=; b=incvLU+9UzHAwZyaZNI6QMaeyH
 J715EDcEBxuV6UJaSGeC32o1bzOP7NSITbO5Or/M+TmW8EloOf7Jhi/aq2BedQ2swYOZTy7ZjrbQx
 kPQbXI7meymbt/BVYAFE/tPGIKn8SNWKNMB3ZMCNaBV1BubfMz/Fp9j0vsufLDHbJvBs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0La5-0004Ng-6J for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 11:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669808922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ew+rmcqxH2n7lRVyzxgZ+S2EuF0zHGkt1auf+7rBZUw=;
 b=Cce6Epb1x/gxvawGKXvHwZ7r7X2kFRNKxGP/BXmIm3Hcxqu7e8qfgHHdK8XT9E0aRtpVLD
 KxUJdW4okUUk2bGb51epGzQi6f0o1h6MLG9RmEoU1WN+B8hnfLYll+Y6WUmQ+OTcCa6vxF
 yIHMyGLFmJBWyJuSSJHLU2bIeobCw+A=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-65-T9_MK83pNQ-_S9bQWXk_dA-1; Wed, 30 Nov 2022 06:48:40 -0500
X-MC-Unique: T9_MK83pNQ-_S9bQWXk_dA-1
Received: by mail-wm1-f72.google.com with SMTP id
 x10-20020a05600c420a00b003cfa33f2e7cso9302197wmh.2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 03:48:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ew+rmcqxH2n7lRVyzxgZ+S2EuF0zHGkt1auf+7rBZUw=;
 b=2D8qolxx2X9JkhbQut4NMKF07nJl8dsHaRZ1jxruhJ/j/F/UIVKCUsxrou6rk5rl5q
 I+1A+9HI053HToTC0Z8udB5IxLq96c3bP54lJaUJj8FzoDTAS0TV9RiVf6EEQHM80oWc
 euXG/+lDtVUTs0brZImR/jDfWmDsqDMJlaGWhOj1USirXRCnFYdCqmL6Hdca433nVTtx
 8OYE2SWfGn9BVbE6zTH6dJzk5P5gC5hJ1x3wmT+Tl7hRpX7o9dJiRVyYfPSniUsVpzq1
 T/9wu54icPzKxHQGMBs7GPxFm939XDuU+VQMOYXFWyZ7YH1lRQYGMIcIN8JnTJ7/f+sD
 w4aQ==
X-Gm-Message-State: ANoB5pllLfoe9cHabe/xmnQAQSANcqvBaS/ornzU6ZjPkuv0NjwQS+ck
 OTsN+yrCdZNEUkK6TMx8iwCZL/TBwiJN/eqHyLC94Ochud3KaVDeM6axfGvKRB/QD4mP8GB5gCv
 Bpxa3BVMrRe+9gm2paOQmRHGtCEYIU4HYwoU=
X-Received: by 2002:a5d:5f04:0:b0:241:e9a6:fb3 with SMTP id
 cl4-20020a5d5f04000000b00241e9a60fb3mr22408085wrb.462.1669808919571; 
 Wed, 30 Nov 2022 03:48:39 -0800 (PST)
X-Google-Smtp-Source: AA0mqf71i1QvnhhrXaTwa+I+8EpX/qnDqrYR4GbrQTWzEGi7bUvVncNy/xc2a74B4erNgTJKDcQn3Q==
X-Received: by 2002:a5d:5f04:0:b0:241:e9a6:fb3 with SMTP id
 cl4-20020a5d5f04000000b00241e9a60fb3mr22408062wrb.462.1669808919318; 
 Wed, 30 Nov 2022 03:48:39 -0800 (PST)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
 by smtp.gmail.com with ESMTPSA id
 16-20020a05600c22d000b003b497138093sm1620841wmg.47.2022.11.30.03.48.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Nov 2022 03:48:38 -0800 (PST)
Date: Wed, 30 Nov 2022 12:48:35 +0100
From: Guillaume Nault <gnault@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20221130114835.GA29316@pc-4.home>
References: <cover.1669036433.git.bcodding@redhat.com>
 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <20221129140242.GA15747@lst.de>
MIME-Version: 1.0
In-Reply-To: <20221129140242.GA15747@lst.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 29, 2022 at 03:02:42PM +0100, Christoph Hellwig
 wrote: > Hmm. Having to set a flag to not accidentally corrupt per-task >
 state seems a bit fragile. Wouldn't it make sense to find a way to [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p0La5-0004Ng-6J
Subject: Re: [V9fs-developer] [PATCH v1 2/3] Treewide: Stop corrupting
 socket's task_frag
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, samba-technical@lists.samba.org,
 Valentina Manea <valentina.manea.m@gmail.com>, linux-nvme@lists.infradead.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Eric Dumazet <edumazet@google.com>, linux-nfs@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, Shuah Khan <shuah@kernel.org>,
 linux-afs@lists.infradead.org, Mike Christie <michael.christie@oracle.com>,
 drbd-dev@lists.linbit.com, linux-cifs@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Mark Fasheh <mark@fasheh.com>, cluster-devel@redhat.com,
 Christine Caulfield <ccaulfie@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Anna Schumaker <anna@kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Josef Bacik <josef@toxicpanda.com>, nbd@other.debian.org,
 linux-block@vger.kernel.org, David Teigland <teigland@redhat.com>,
 Joel Becker <jlbec@evilplan.org>, v9fs-developer@lists.sourceforge.net,
 Keith Busch <kbusch@kernel.org>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, Chris Leech <cleech@redhat.com>,
 open-iscsi@googlegroups.com, "Martin K. Petersen" <martin.petersen@oracle.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>,
 Christoph =?iso-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Benjamin Coddington <bcodding@redhat.com>,
 Chuck Lever <chuck.lever@oracle.com>, Lee Duncan <lduncan@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Nov 29, 2022 at 03:02:42PM +0100, Christoph Hellwig wrote:
> Hmm.  Having to set a flag to not accidentally corrupt per-task
> state seems a bit fragile.  Wouldn't it make sense to find a way to opt
> into the feature only for sockets created from the syscall layer?

That's something I originally considered. But, as far as I can see, nbd
needs this flag _and_ uses sockets created in user space. So it'd still
need to opt out manually.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
