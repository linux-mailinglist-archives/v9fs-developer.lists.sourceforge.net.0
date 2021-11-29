Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A2C461669
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 14:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrgho-0003aC-IR; Mon, 29 Nov 2021 13:28:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mrghm-0003a6-T1
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 13:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqvBSWXnt1kWergVBTedJtW+3y42E8g/POO1J99TSxc=; b=RDyM5enWM+VyXYbQojSggCPj74
 7TdQbXKlOuL8/llTzoKT9lLbw1Sc9lXPkA7WqzxkmqT2TVTE+hoWLV5mQ3bXFGXCdlXZyiZf5FKRI
 wV68NB3PQguX6+O4LhfzqFbjLpp8/pHsWSugZYoqUugdAAOt0QJrlmW8r5xFFvrFrexE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mqvBSWXnt1kWergVBTedJtW+3y42E8g/POO1J99TSxc=; b=WAlPyxajW0o2eak8llytvz73pM
 fxhTnILNcPnPfE6JGJ72klqySEVmNV3u66MSQJr52toXRWHgt3gro7+Ed8ENNQMUoupTt6j21BGhY
 KcbASFi6ZwZZAaS/ne780dou3cYA+0vs47KHiBaqrWE4gWBNLyK3N4eYyxEDA0Yp9XiI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrghh-00EAIM-IG
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 13:28:27 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D7156C01E; Mon, 29 Nov 2021 14:28:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1638192494; bh=mqvBSWXnt1kWergVBTedJtW+3y42E8g/POO1J99TSxc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TQrvVkbX9wcCLteH6GpCmnOdks5ympvSeJGu4+tiZARZjggySi4XT3lLdSYdTWMUr
 8WO4bi8OevFpFQDzlzddbIbjGS5YgEMi9Xjm1V/ZxM4ZOeYf82zvYJvvQCfDjI4Hq2
 VMRG7RlzoHrGAJUNaScegO96QyoFVs1wOM4oJ2wz34KoxNptQQBwKofNQA6LcJ54Wb
 4rF6WQ1IQ113u4PLcZUTf4mEj1tEtgznISEg4w4UKDBZcrxsG/TiXsySsBwFJ6fx5k
 l04kHJyyq5J3auuslZnCkHqeFTiyyBv0Mg9/6iLsc40Z1Ug2C7TTRufAXu/wvMvIPU
 LUsIh7ffNrr9Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 04A7EC009;
 Mon, 29 Nov 2021 14:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1638192494; bh=mqvBSWXnt1kWergVBTedJtW+3y42E8g/POO1J99TSxc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TQrvVkbX9wcCLteH6GpCmnOdks5ympvSeJGu4+tiZARZjggySi4XT3lLdSYdTWMUr
 8WO4bi8OevFpFQDzlzddbIbjGS5YgEMi9Xjm1V/ZxM4ZOeYf82zvYJvvQCfDjI4Hq2
 VMRG7RlzoHrGAJUNaScegO96QyoFVs1wOM4oJ2wz34KoxNptQQBwKofNQA6LcJ54Wb
 4rF6WQ1IQ113u4PLcZUTf4mEj1tEtgznISEg4w4UKDBZcrxsG/TiXsySsBwFJ6fx5k
 l04kHJyyq5J3auuslZnCkHqeFTiyyBv0Mg9/6iLsc40Z1Ug2C7TTRufAXu/wvMvIPU
 LUsIh7ffNrr9Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2beba882;
 Mon, 29 Nov 2021 13:28:09 +0000 (UTC)
Date: Mon, 29 Nov 2021 22:27:54 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <YaTVWtjhm4+2FI33@codewreck.org>
References: <000000000000a0d53f05d1c72a4c%40google.com>
 <20211129114434.3637938-1-brauner@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129114434.3637938-1-brauner@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Brauner wrote on Mon, Nov 29, 2021 at 12:44:34PM
 +0100: > From: Christian Brauner <christian.brauner@ubuntu.com> > > The
 9P2000.L
 setattr method v9fs_vfs_setattr_dotl() copies struct iattr > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mrghh-00EAIM-IG
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Brauner wrote on Mon, Nov 29, 2021 at 12:44:34PM +0100:
> From: Christian Brauner <christian.brauner@ubuntu.com>
> 
> The 9P2000.L setattr method v9fs_vfs_setattr_dotl() copies struct iattr
> values without checking whether they are valid causing unitialized
> values to be copied. The 9P2000 setattr method v9fs_vfs_setattr() method
> gets this right. Check whether struct iattr fields are valid first
> before copying in v9fs_vfs_setattr_dotl() too and make sure that all
> other fields are set to 0 apart from {g,u}id which should be set to
> INVALID_{G,U}ID. This ensure that they can be safely sent over the wire
> or printed for debugging later on.

hm, this might work for g/uid, but the struct isn't directly memcpy'd
over the wire and real check should be based on p9attr.valid -- I have
the feeling this is just sweeping the issue under the rug and will be
potentially sending invalid modes or other attributes if that is a
problem.
Copying uninitialized value isn't a problem, and is usually faster than
checking before every copy, it's using uninitialized values later down
the road that is bad.


OTOH this is better than leaking kernel uninitialized value and
hopefully the server will be using the valid flags and ignore whatever
value we choose to init with, so what I just said (probably) doesn't
really matter and I'd be inclined to just take this for now as I have no
time to check in details...
I guess I'll take this unless someone has anything more to say.

Thanks!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
