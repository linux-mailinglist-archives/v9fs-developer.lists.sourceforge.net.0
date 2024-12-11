Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0160B9EDB0B
	for <lists+v9fs-developer@lfdr.de>; Thu, 12 Dec 2024 00:15:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLVvr-0003PY-3d;
	Wed, 11 Dec 2024 23:15:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1tLVvp-0003PE-5V
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 23:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wLSQMomPRMXyfjszmpA4ht39gCFf4uc3967U/zFycPw=; b=XIH5c4vfkIzi12Y09015BIEM5c
 UThh9owkhYviNaO604ozvrDYBsxq0f/3lNWl1u7LUqej3XVbQD6vpw4gvnQloEO5C5G4mlRjEcHe6
 bhEcwHVx515ORVPiEWoqYgvhI0Ss20cHcxk5zggqV5udT0RsB0NgLubl6xCfiv4hBvz8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wLSQMomPRMXyfjszmpA4ht39gCFf4uc3967U/zFycPw=; b=CK2Uh4sGhKR3R0TMs3i1pfLlQT
 SoV9e1Bg8MVY/wBY8hUWKCS2SIeWzNfZ+bccjsqTgdNie8Tam7SvcmibHBcSjeMz9YPB/zAWBii//
 lqWYmfpmWZ0RPeCX/sPibR572yrELG+qlueuOtEP9Ok/0zhQjGOGKqVK6FJerUHV6Rmw=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tLVvn-0005Nm-86 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 23:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wLSQMomPRMXyfjszmpA4ht39gCFf4uc3967U/zFycPw=; b=VrtgWFXfzcyrbdrF2pQHjgAYO3
 LSUn9mJzbNaEwCahXLxa41HhBaTVnJzKSngcc9S3Eu5+WO4BbOXqsITpTgtqJp559PLUiYRsrduj0
 zeHJKGMTadQvsJnGZKVB9XmeJTwVvOTzq6ubxxzuMr8nuj++8SVTVCu8JaFYwqOXRH9RKDZqFTY0E
 BQUlY7h3X3whyA/1l5JxnAkzCDq1IMUFTzN7ia+3Oi+dp1X6LtcKwXtLKN3rymurSsDJSOm9sn25r
 aObCiZ7do6EUhn391snpvCQaEMW0MFFNC7MSblPLtNdrpBnYyJvJHTdeamlQSM3vjfwTVYo5xweCp
 XjdciA5g==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tLVbg-00000007N6B-1fyc; Wed, 11 Dec 2024 22:55:00 +0000
Date: Wed, 11 Dec 2024 22:55:00 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20241211225500.GH3387508@ZenIV>
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
 <20241211200240.103853-1-leocstone@gmail.com>
 <Z1n-Ue19Pa_AWVu0@codewreck.org>
 <CAHk-=wiH+FmLBGKk86ung9Qbrwd0S-7iAnEAbV9QDvX5vAjL7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wiH+FmLBGKk86ung9Qbrwd0S-7iAnEAbV9QDvX5vAjL7A@mail.gmail.com>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 11, 2024 at 01:32:26PM -0800,
 Linus Torvalds wrote: > On Wed, 11 Dec 2024 at 13:04,
 <asmadeus@codewreck.org> wrote: > > > > Christian
 Schoenebeck's suggestion was something like this -- I [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.89.141.173 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.89.141.173 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.89.141.173 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tLVvn-0005Nm-86
Subject: Re: [V9fs-developer] Alloc cap limit for 9p xattrs (Was: WARNING in
 __alloc_frozen_pages_noprof)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, Christian Brauner <brauner@kernel.org>,
 syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com,
 Leo Stone <leocstone@gmail.com>, ericvh@gmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 Fedor Pchelkin <pchelkin@ispras.ru>, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ericvh@kernel.org, v9fs@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Dec 11, 2024 at 01:32:26PM -0800, Linus Torvalds wrote:
> On Wed, 11 Dec 2024 at 13:04, <asmadeus@codewreck.org> wrote:
> >
> > Christian Schoenebeck's suggestion was something like this -- I guess
> > that's good enough for now and won't break anything (e.g. ACLs bigger
> > than XATTR_SIZE_MAX), so shall we go with that instead?
> 
> Please use XATTR_SIZE_MAX. The KMALLOC_MAX_SIZE limit seems to make no
> sense in this context.
> 
> Afaik the VFS layer doesn't allow getting an xattr bigger than
> XATTR_SIZE_MAX anyway, and would return E2BIG for them later
> regardless, so returning anything bigger wouldn't work anyway, even if
> p9 tried to return such a thing up to some bigger limit.

E2BIG on attempt to set, quiet cap to XATTR_SIZE_MAX on attempt to get
(i.e. never asking more than that from fs) and if filesystem complains
about XATTR_SIZE_MAX not being enough, E2BIG it is (instead of ERANGE
normally expected on "your buffer is too small for that").


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
