Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF546D352C
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 03:33:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pimam-0003FC-39;
	Sun, 02 Apr 2023 01:33:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1pimai-0003F5-Sx
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 01:33:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P1zn3BTPH5+hER81xqxLdjLEouLYyQrC9ukU+Ae924A=; b=TdK/tlDshUuaS4b1ijTMghaOZh
 R59Knrb8U1b1ZRXZDG07RBhB2lEMkTEKdKEhp+mqQ8qp+gtpjCl6h31S5InqG0IGsvB/i0Ytfkx8d
 r1fjCk8HI/AYThV+ieGnTlb1kia+EFgd3C+Tpop2SYBX6aIKO4NpfH/UwiXXuv4tAZAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P1zn3BTPH5+hER81xqxLdjLEouLYyQrC9ukU+Ae924A=; b=JpgUe3XSfdxv+Rl+tiPaxs4KCO
 6ZOkNcsqYVRKMnahPKE8GwtPZgMa5UHoNI7cfBIQIhOIyilDbbXf6ICiLMlW95/P1ut1TtVQQnb9s
 YjV1nX5TsIUvnrmsh4+Qb4Rk6TmdUklwmj54goE5FFfkcz+XNMVDz3bG6nU563l/IFXM=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pimag-00COM8-6D for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 01:33:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=P1zn3BTPH5+hER81xqxLdjLEouLYyQrC9ukU+Ae924A=; b=hQA5JxqwFGb7Mmzv+BbhfAnXz8
 lXp3MsEXv54RjcJcPt+Vc4uCWDHallEF7Jss7jtigfJLgUNqKg+kDnhObCUGHvxfTa8VyZjdP7s6f
 M190U17D5vyEAOAjMYn2DM5SkYetIh2BqpYeCyAqLJgwrc99JvhfHroJcJzQAxv0PVnwzJ3UNkKfv
 EDL4s7nMOA/yuEqzYmCZMsoSs0RMypbrLh+RSU2EKHEY59LQtsFKtPd24yfT7DnZbseNWcw4a3XtK
 QzeyNn1/tPXEhzGcVQIaqq6eTc5zO2Mr1mURYRvU+cVX7yUeHspNZmYzXKuciWV4a1wYNmyfAfsco
 E235N+kg==;
Received: from [2601:1c2:980:9ec0::2764]
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1pimaJ-00BYUV-1Z; Sun, 02 Apr 2023 01:32:43 +0000
Message-ID: <d5048f3d-fe17-72f8-0d61-a5ec5a1a9f43@infradead.org>
Date: Sat, 1 Apr 2023 18:32:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, v9fs@lists.linux.dev
References: <20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a@kernel.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi-- On 4/1/23 16:16, Eric Van Hensbergen wrote: > diff --git
 a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst > index
 0e800b8f73cc..d79bf4e41a71 100644 > --- a/Documentation/filesyste [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pimag-00COM8-6D
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Rework cache modes and add new
 options to Documentation
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi--

On 4/1/23 16:16, Eric Van Hensbergen wrote:
> diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
> index 0e800b8f73cc..d79bf4e41a71 100644
> --- a/Documentation/filesystems/9p.rst
> +++ b/Documentation/filesystems/9p.rst
> @@ -78,19 +78,39 @@ Options
>    		offering several exported file systems.
>  
>    cache=mode	specifies a caching policy.  By default, no caches are used.
> -
> -                        none
> -				default no cache policy, metadata and data
> -                                alike are synchronous.
> -			loose
> -				no attempts are made at consistency,
> -                                intended for exclusive, read-only mounts
> -                        fscache
> -				use FS-Cache for a persistent, read-only
> -				cache backend.
> -                        mmap
> -				minimal cache that is only used for read-write
> -                                mmap.  Northing else is cached, like cache=none
> +		The mode can be specified as a bitmask or by using one of the
> +		prexisting common 'shortcuts'.
> +		The bitmask is described below: (unspecified bits are reserved)
> +
> +			==========	================================================
> +			0b00000000	all caches disabled, mmap disabled
> +			0b00000001	file caches enabled
> +			0b00000010	meta-data caches enabled
> +			0b00000100	writeback behavior (as opposed to writethrough)
> +			0b00001000	loose caches (no explicit consistency with server)
> +			0b10000000	fscache enabled for persistent caching
> +			=========	================================================
> +

Extend the === lines to that no text extends beyond the last '=' character,
both above and below.
Otherwise there will be warnings.

> +		The current shortcuts and their associated bitmask are:
> +
> +			=========	=============================================
> +			none		0b00000000 (no caching)
> +			readahead	0b00000001 (only read-ahead file caching)
> +			mmap		0b00000101 (read-ahead + writeback file cache)
> +			loose		0b00001111 (non-coherent file and meta-data caches)
> +			fscache		0b10001111 (persistent loose cache)
> +			=========	=============================================
> +
> +		NOTE: only these shortcuts are tested modes of operation at the
> +		moment, so using other combinations of bit-patterns is not
> +		known to work.  Work on better cache support is in progress.
> +
> +		IMPORTANT: loose caches (and by extension at the moment fscache)
> +		do not necessarily validate cached values on the server.  In other
> +		words changes on the server are not guaranteed to be reflected
> +		on the client system.  Only use this mode of operation if you
> +		have an exclusive mount and the server will modify the filesystem
> +		underneath you.
>  
>    debug=n	specifies debug level.  The debug level is a bitmask.
>  
> @@ -137,6 +157,10 @@ Options
>    		This can be used to share devices/named pipes/sockets between
>  		hosts.  This functionality will be expanded in later versions.
>  
> +  directio	bypass page cache on all read/write operations
> +
> +  ignoreqv	ignore qid.version==0 as a marker to ignore cache
> +
>    noxattr	do not offer xattr functions on this mount.
>  
>    access	there are four access modes.

-- 
~Randy


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
