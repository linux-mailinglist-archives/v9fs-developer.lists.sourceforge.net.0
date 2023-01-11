Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCE56652F5
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Jan 2023 05:54:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pFT83-0006ZA-4j;
	Wed, 11 Jan 2023 04:54:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xiubli@redhat.com>) id 1pFT81-0006Z4-BE
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Jan 2023 04:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AwDGIIG2kEW7th9yR8DoIeZiikP/oVS4/IYm7KTM+N0=; b=SaWacckXf31teZDjZ/KOdIglZc
 F8wChsfhzVmItSOp8ndhhydaFw7ZgdPR8IOBYO8T12DRxfljjbDBYIoISOKGPCqiBFV7pm9R8Ecj3
 bS99GbZv2GcQY80rlenJ+WfQwGUteU7rnUsB+A2vi2d7JB0+7/OP0huh8JbGyj69bJ2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AwDGIIG2kEW7th9yR8DoIeZiikP/oVS4/IYm7KTM+N0=; b=Bf6iKFXMnQQ1gsEi5IrHjWjGGR
 Zri3f+SSNRskGN4jg3udXTatq0UM/1U15IztEbzIzb5WFSGPhwt3Y7/4DUV/kKwLOP5a0dfICeBwh
 Es507wE3zj5oBIvjAqkxWj/qKKKfzyu1NpL1KmmNxcgnQczSNPFmkIJCSNB+Mz/sY4p8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFT7v-00DYlz-D6 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Jan 2023 04:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673412849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AwDGIIG2kEW7th9yR8DoIeZiikP/oVS4/IYm7KTM+N0=;
 b=brBsQQCOn3YNpLDRSqJ0fzxkPgWTd4vbAn6G6HjRvF4ftTEjYNlIg2wBSn3tcP5h2zfNIk
 jWqFpNqwVQdt3rHPjEQTY6pwwFqd6aMMsecCM9qO+H49BcBd/QzXarky/Q/461Wvi4a92Y
 V+yqgBm2DJ/BldL60Ie7/m7IEX5QWqQ=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-413-I1R1TVaUNtiR-gwIrneEFg-1; Tue, 10 Jan 2023 23:54:07 -0500
X-MC-Unique: I1R1TVaUNtiR-gwIrneEFg-1
Received: by mail-pg1-f200.google.com with SMTP id
 s76-20020a632c4f000000b0049ceb0f185eso6102997pgs.7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 10 Jan 2023 20:54:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AwDGIIG2kEW7th9yR8DoIeZiikP/oVS4/IYm7KTM+N0=;
 b=hcc//0QPQOA/Mof85Qrufm5lVcQqYkV7w44z6+q31EgBdqgdRV9BxdY/T7KHXulG1b
 pirji6RTqnycryTTggaCRW+44koXvGkcSgbSbjQiRY8DOF5RZC+AM5PklboQbmAExI6x
 yWvQO4Dz7EYUNkUItrMYV7DX0UqnenWrbUySCqudmqS8Np0Y7No9q26yYOaZRC8/7wyg
 Viw2pS4fuYavW1gun9/tn8A8x93JV5i7Zk5a1v8vS+agh78Zgczt8hhHSmc25kQ9R4fU
 Z86Gaq6lEWMlRL2qbPXIEUCvuZDBKufnx5MzLPqmkQynpUE1DyEtRt2JV905ysnr+g4k
 bR5Q==
X-Gm-Message-State: AFqh2kq/Wq8/ACLCTLcu87Q6zpbjCxqcfxnZHTWM/NEGhNfe2YBoMyov
 EOIZAxUg7VtovyPt6eHBMLlwS/PNXvdyjer+h3AfaRf+f2MH5j8ozlOqJPfmnGIVQIuWskpbULv
 cRpZZsWlX8e/gdCr7vk0waysyUwGxS37iga0=
X-Received: by 2002:a17:903:50e:b0:189:bda4:4a39 with SMTP id
 jn14-20020a170903050e00b00189bda44a39mr68317503plb.49.1673412846854; 
 Tue, 10 Jan 2023 20:54:06 -0800 (PST)
X-Google-Smtp-Source: AMrXdXs+9rrIRD+6pRvHkwnX14gh2BCpLNg+4mxFg/ySKLAFpFMrHGq/R+Lf/NnqdSw7vAx/2ZYhMg==
X-Received: by 2002:a17:903:50e:b0:189:bda4:4a39 with SMTP id
 jn14-20020a170903050e00b00189bda44a39mr68317481plb.49.1673412846568; 
 Tue, 10 Jan 2023 20:54:06 -0800 (PST)
Received: from [10.72.14.8] ([43.228.180.230])
 by smtp.gmail.com with ESMTPSA id
 d11-20020a170902654b00b001895d87225csm8944870pln.182.2023.01.10.20.53.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Jan 2023 20:54:05 -0800 (PST)
Message-ID: <330d1f1b-02b2-ceb1-5df5-ef6ce0061eb2@redhat.com>
Date: Wed, 11 Jan 2023 12:53:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Jeff Layton <jlayton@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Ilya Dryomov <idryomov@gmail.com>,
 Steve French <sfrench@samba.org>, Paulo Alcantara <pc@cjr.nz>,
 Ronnie Sahlberg <lsahlber@redhat.com>, Shyam Prasad N
 <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Christine Caulfield <ccaulfie@redhat.com>,
 David Teigland <teigland@redhat.com>, Chuck Lever <chuck.lever@oracle.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Bob Peterson <rpeterso@redhat.com>,
 Andreas Gruenbacher <agruenba@redhat.com>,
 Namjae Jeon <linkinjeon@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anna Schumaker <anna@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg
 <martin@omnibond.com>, "Darrick J. Wong" <djwong@kernel.org>
References: <20230105211937.1572384-1-jlayton@kernel.org>
From: Xiubo Li <xiubli@redhat.com>
In-Reply-To: <20230105211937.1572384-1-jlayton@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 06/01/2023 05:19, Jeff Layton wrote: > The file locking
 definitions have lived in fs.h since the dawn of time, > but they are only
 used by a small subset of the source files that > include it. > > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pFT7v-00DYlz-D6
Subject: Re: [V9fs-developer] [PATCH v2] filelock: move file locking
 definitions to separate header file
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
Cc: linux-cifs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 linux-xfs@vger.kernel.org, devel@lists.orangefs.org,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 ocfs2-devel@oss.oracle.com, Steve French <stfrench@microsoft.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On 06/01/2023 05:19, Jeff Layton wrote:
> The file locking definitions have lived in fs.h since the dawn of time,
> but they are only used by a small subset of the source files that
> include it.
>
> Move the file locking definitions to a new header file, and add the
> appropriate #include directives to the source files that need them. By
> doing this we trim down fs.h a bit and limit the amount of rebuilding
> that has to be done when we make changes to the file locking APIs.
>
> Reviewed-by: Xiubo Li <xiubli@redhat.com>
> Reviewed-by: Christian Brauner (Microsoft) <brauner@kernel.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: David Howells <dhowells@redhat.com>
> Acked-by: Chuck Lever <chuck.lever@oracle.com>
> Acked-by: Joseph Qi <joseph.qi@linux.alibaba.com>
> Acked-by: Steve French <stfrench@microsoft.com>
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>   arch/arm/kernel/sys_oabi-compat.c |   1 +
>   fs/9p/vfs_file.c                  |   1 +
>   fs/afs/internal.h                 |   1 +
>   fs/attr.c                         |   1 +
>   fs/ceph/locks.c                   |   1 +

ceph part looks good to me.

Thanks

- Xiubo




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
