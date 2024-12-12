Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DC89EE466
	for <lists+v9fs-developer@lfdr.de>; Thu, 12 Dec 2024 11:44:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLgg2-00054W-9d;
	Thu, 12 Dec 2024 10:44:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1tLgg1-00054O-IJ
 for v9fs-developer@lists.sourceforge.net;
 Thu, 12 Dec 2024 10:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0pBBMlpWw78z8gxF0nm1mH/ofBxxUMEFQEaNd51NMN4=; b=cyjDnSY3yo0+ODHBDQC6WU7SxX
 3yORnNHUFzkmlhgV/oBojyyk6ws/gmTbNG5E45pr+9M/8e/aLYOMEOAhMRjIgiJCHlDCTc+s0KDPT
 JWCFYJg3aZlANuFLXo1gqSiGamwh5BeEQpF1zEdEpmqqye29qqXR1Sp81D+jKgUBYVnk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0pBBMlpWw78z8gxF0nm1mH/ofBxxUMEFQEaNd51NMN4=; b=Xg9sTsnteKYAoEh817/SCyf6k2
 L8TwWnpYzLLYyxzXrCTd6dhnbJumY7isqJYNtVTsXbGf00MzTr349Qzc5F63BZhGsJJVfNxn/Gnd1
 QbtQumBiWNqr/gAG2IaAFqS1za1ev+apumOsaV6Q4phoFwaxSdOw7W35ZST2VfgaC1LE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tLgg1-0007bH-LV for v9fs-developer@lists.sourceforge.net;
 Thu, 12 Dec 2024 10:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=0pBBMlpWw78z8gxF0nm1mH/ofBxxUMEFQEaNd51NMN4=; b=a7PFC7o6hws+u+0cwhcXO7kR/b
 tB/tueVrn4mjzB3aGr1q9FSamGxeUK6RIOdsi2HA7Dd98sm6k2Cpum7T75L9f8Aon4G0TAKxytxyV
 CrfbZL4faKL4J0nzy2FNbTH9Dp3dknvDdtmQJX1xI1mVLvSr7ZqlzsWE05CxMweSppT7YcNpUW75e
 YGImZMCzoTS3oQfotCodbLml6ziYXbVI5fLgZZMWqTLwX82GaZqb70a7Gn5GkGI6CABYP2i3o4gqL
 bt1TUDkLIZF+E74BUAhGof7YHaFlTpmpm1PgqHL0Ne1Ph5bRzNnr63xOB1KEtRtpFyeZOa+PhgBll
 XXT9G7f2kGgaXNV+iIJMH5F4RmH+MRjQQj15HPcEbhgo7XtE2LG/8MXmc3vyRcog+irz3zkWVBAG6
 B6H8x4ISBFuoFNhH8biyMkGQBhufQtrWTZnGBd3q/Hpbg1wlyeUCciJ+btzobPqUSJdY7bI4igTbP
 1vrGxLLDvUZrnRDDA3t4xzeFebhjIh2KhLxiihULMlG/HfJIZfzga8YbqlLstsO2rQEvq1AQKRT8D
 /f8G7ObtJXAaSHiXVJ/MdjZMSoiK+AQL7LU9//TGSbRkieXX7pzHdef2XIFBE0MrkN4yQmvoit9AU
 VcBrSOpDNplbYcaOspPsDTnlqM7Zzm8gxee/DJVwc=;
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>
Date: Thu, 12 Dec 2024 11:17:06 +0100
Message-ID: <2475109.TFnaqUCzQF@silver>
In-Reply-To: <20241211225500.GH3387508@ZenIV>
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
 <CAHk-=wiH+FmLBGKk86ung9Qbrwd0S-7iAnEAbV9QDvX5vAjL7A@mail.gmail.com>
 <20241211225500.GH3387508@ZenIV>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wednesday, December 11,
 2024 11:55:00 PM CET Al Viro wrote:
 > On Wed, Dec 11, 2024 at 01:32:26PM -0800, Linus Torvalds wrote: > > On
 Wed, 11 Dec 2024 at 13:04, <asmadeus@codewreck.org> wrote: > > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [5.189.157.229 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [5.189.157.229 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tLgg1-0007bH-LV
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, Christian Brauner <brauner@kernel.org>,
 syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com,
 Leo Stone <leocstone@gmail.com>, ericvh@gmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 Fedor Pchelkin <pchelkin@ispras.ru>, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ericvh@kernel.org, v9fs@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wednesday, December 11, 2024 11:55:00 PM CET Al Viro wrote:
> On Wed, Dec 11, 2024 at 01:32:26PM -0800, Linus Torvalds wrote:
> > On Wed, 11 Dec 2024 at 13:04, <asmadeus@codewreck.org> wrote:
> > >
> > > Christian Schoenebeck's suggestion was something like this -- I guess
> > > that's good enough for now and won't break anything (e.g. ACLs bigger
> > > than XATTR_SIZE_MAX), so shall we go with that instead?
> > 
> > Please use XATTR_SIZE_MAX. The KMALLOC_MAX_SIZE limit seems to make no
> > sense in this context.
> > 
> > Afaik the VFS layer doesn't allow getting an xattr bigger than
> > XATTR_SIZE_MAX anyway, and would return E2BIG for them later
> > regardless, so returning anything bigger wouldn't work anyway, even if
> > p9 tried to return such a thing up to some bigger limit.
> 
> E2BIG on attempt to set, quiet cap to XATTR_SIZE_MAX on attempt to get
> (i.e. never asking more than that from fs) and if filesystem complains
> about XATTR_SIZE_MAX not being enough, E2BIG it is (instead of ERANGE
> normally expected on "your buffer is too small for that").

So that cap is effective even if that xattr does not go out to user space?

I mean the concern I had was about ACLs on guest, which are often mapped with 
9p to xattr on host and can become pretty big. So these were xattr not 
directly exposed to guest's user space.

/Christian




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
