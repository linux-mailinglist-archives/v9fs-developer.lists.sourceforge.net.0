Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7280A55E38D
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 15:37:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o6BOt-0001cn-FW; Tue, 28 Jun 2022 13:37:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jgg@ziepe.ca>) id 1o6BOs-0001ch-9F
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 13:37:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gN4ZNyT9GRZ46Vwx3CUzNgwGxKE3ptwelsb3O/2waMc=; b=ebyAZeO6oubp/DHfmGXy9phdO8
 qeOaZwH/Ax8N05agun+tq/VM4ElTZpUcyiyyxkjMCoHJHY1xSvbTE9Dh3IqFUH/gAsPZ3Fd2v2GgH
 cU23TEvVIdHv+C4vXnz8EzXUc+LfkFYvLFyyi//ZronsfTqSubLu9saVBpPsd5NSCRDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gN4ZNyT9GRZ46Vwx3CUzNgwGxKE3ptwelsb3O/2waMc=; b=hkR/0kgue4rz+7Awn5yASciGMu
 qRpT+C4lgHBF9yS/LRTRrDlOErmBpK6wZgVC+biDd8RIX4D7HNeDeX3KCXpRVj9U/2sD/UG+KebA2
 UnvPlF9Vk7hVEW7N+/WJiUOK5PSXi5Mmdv+o73e9ar5jo5Qy6hzf6iChBl6m40Y7V4hQ=;
Received: from mail-qv1-f51.google.com ([209.85.219.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o6BOl-0002I8-5T
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 13:37:06 +0000
Received: by mail-qv1-f51.google.com with SMTP id t16so19996155qvh.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Jun 2022 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gN4ZNyT9GRZ46Vwx3CUzNgwGxKE3ptwelsb3O/2waMc=;
 b=SRPS2zIET11DP06FAnMANUW30rX+F+KLnmvgpItTZuHDiHMYbx191l+udZ0BIKVo+p
 DUqKNFcRnPxEdciA9v/rjMoUuUABeinU5a59o91m7mO0ei+LjGwfeqP1sFK6bST4r2Sc
 +kwNrequilw+r3whlSvEqjUrw7uEou8aBEv26lUqmckZs7QEO1gxqNAIdKmR6ixdoBBW
 VwXL+VitONeiHER4+6czyOuvux/gSa01CsajOGl6xQeKgTZdOU9/PF5ai6yeP3/8Na6A
 VkyCaiWAoLiX3IML+rZ/qAH9obhof6Stg3VEpk4n7D6sOfmWV6A4zI2itZ9nI+NyrBEn
 GAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gN4ZNyT9GRZ46Vwx3CUzNgwGxKE3ptwelsb3O/2waMc=;
 b=N8JXwdQvVz9bk6BokpwKsCjS21H81xaoF1n+YKxmVXT+tpPbGaCq6uHBJDOxZ3Qlde
 LCotX4Y5Uskg0jhY6yU1AfJ7Lw1kY1EXbvfjtmK6QK3OlngPa3nktXihbkSJ4aKHpiNT
 pwJDRRl/hoYMmSfYWjkz9QI+CxDma9iSGsPqAchJZf9ochC4Y8zYq2L3Ll2dmcR7iwY2
 gFeVbwro8dQ7fG2kKRXBmFyjksNwOK1NKQTxqh5GY+RBB919Nf0ZcpX0APyZjl8DRCkp
 FFi55qE+kn7M4Ej/Y6yiXXZR4YEAvDSlCVUUhexCpSYdi7iTx9TFLQNsLUJEzctYfq02
 0XYg==
X-Gm-Message-State: AJIora+cf7hFXw4+bfCyUDZxJ5PcPWkgAEYw9OlcEdSZ0TU+PJ/u97Ob
 3YrLMNSO4GTiSdIsEsXtzLiIaw==
X-Google-Smtp-Source: AGRyM1uooXTVlKXYemR9EvbrrQp4i2XA4BpQT09bjvN7I6xIwm3cKCnpXCNHNGqwd+HxVz52pv3Omw==
X-Received: by 2002:ac8:5b0d:0:b0:31b:f519:4107 with SMTP id
 m13-20020ac85b0d000000b0031bf5194107mr1237416qtw.331.1656423413317; 
 Tue, 28 Jun 2022 06:36:53 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.129]) by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a29ca00b006a79479657fsm708363qkp.108.2022.06.28.06.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jun 2022 06:36:52 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1o6BOd-002vAA-VA; Tue, 28 Jun 2022 10:36:51 -0300
Date: Tue, 28 Jun 2022 10:36:51 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <20220628133651.GO23621@ziepe.ca>
References: <20220627180432.GA136081@embeddedor>
 <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
 <20220628004052.GM23621@ziepe.ca>
 <20220628005825.GA161566@embeddedor>
 <20220628022129.GA8452@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628022129.GA8452@embeddedor>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 28, 2022 at 04:21:29AM +0200, Gustavo A. R. Silva
 wrote: > > > Though maybe we could just switch off
 -Wgnu-variable-sized-type-not-at-end
 during configuration ? > We need to think in a different strategy. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.51 listed in list.dnswl.org]
X-Headers-End: 1o6BOl-0002I8-5T
Subject: Re: [V9fs-developer] [PATCH][next] treewide: uapi: Replace
 zero-length arrays with flexible-array members
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
Cc: nvdimm@lists.linux.dev, alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 x86@kernel.org, kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, v9fs-developer@lists.sourceforge.net,
 Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, virtualization@lists.linux-foundation.org,
 io-uring@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-sctp@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jun 28, 2022 at 04:21:29AM +0200, Gustavo A. R. Silva wrote:

> > > Though maybe we could just switch off -Wgnu-variable-sized-type-not-at-end  during configuration ?

> We need to think in a different strategy.

I think we will need to switch off the warning in userspace - this is
doable for rdma-core.

On the other hand, if the goal is to enable the array size check
compiler warning I would suggest focusing only on those structs that
actually hit that warning in the kernel. IIRC infiniband doesn't
trigger it because it just pointer casts the flex array to some other
struct.

It isn't actually an array it is a placeholder for a trailing
structure, so it is never indexed.

This is also why we hit the warning because the convient way for
userspace to compose the message is to squash the header and trailer
structs together in a super struct on the stack, then invoke the
ioctl.

Jason 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
