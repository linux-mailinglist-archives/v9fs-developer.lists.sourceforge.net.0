Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC99EE4EB
	for <lists+v9fs-developer@lfdr.de>; Thu, 12 Dec 2024 12:22:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLhHC-0004q4-6V;
	Thu, 12 Dec 2024 11:22:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1tLhHA-0004pv-Iy
 for v9fs-developer@lists.sourceforge.net;
 Thu, 12 Dec 2024 11:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nncaMgD9Zf1hOTs2IIZuBWXTffTYXbgQRYKcNJadq9E=; b=ARye1qlz6ivyfChMFd9r7oUV+M
 xfvHS2OeDdSLQLqyee/UbHgMq11siuxKOCd+BITUauBx4NRnBfoR/zbVra+hnSrD1+DcC6QYd7GOl
 EMgOeQqj3CmYZirpVm4IxXr5lTj4f1tlGbUMawCWo+dkCMbcJutnzaWOSBiL06hB16WM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nncaMgD9Zf1hOTs2IIZuBWXTffTYXbgQRYKcNJadq9E=; b=ZKf9MydEZq0O8t/jDoF+ID5/Vj
 OB81YZbgUmamBr8W7UquWWZnovwL0BsB776zA8LRhUJRvd4HEyzlGik6LIvRNb5UbujLOReHvGikV
 +NkcP2hZ0y3sHNG69B9gDVSw9EU87NtIEFgVMPXTS4gtY1GK2v0Bb/DKZPhC1pZfHAa0=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tLhHA-0006PL-Lz for v9fs-developer@lists.sourceforge.net;
 Thu, 12 Dec 2024 11:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=nncaMgD9Zf1hOTs2IIZuBWXTffTYXbgQRYKcNJadq9E=; b=WhGTaMzZzo/3Rtf0KgkzYItp7t
 m5o8K+ds0J4GaguPKCF6eXNQpho568IKhcyN+PeJ4vUi89inx0QKO+rqz9yXyIyg3jI/GHWti3rJz
 crl3E58EmefyDRzT6QtCeGItYe1GuyzPN0k5l6B4debDjVTUc/CPmBhF1fiHi6EgZ6D1Qq2gyHQYW
 E/bE41t0o15oqT2r90XCpfwtQWnG8/xv1EvOwVILtqKgwOXGDbhyl1JDtK/6sOM/NJn2b9dE0q5ag
 ya845l834vRxfWsoh4nNtgrEutvdGyqcrPbhILy01FjNkFuGIZ89/bC0pGtg1m+raZgYEe3ntWDoS
 PMXsCw7A+vucPMW4dSOeU27yKjl1Y65QdCUuIFgMLO+gjOAWmK6IVuhGgk5m1cbIW04FYCjXZu3Rj
 wcg+fr8DnquZMzbRHd272FiiGgyHKQ/tuMaVcOoSwDePWz31HoJYvXQgyt4tErjJuHqFhoeRSazin
 KTkAscAsMaHH/knFsnJ5cPuZhgWqm1L53x6/W7svNbuA8x9QgR2agBTZzMB6bx5FLFdaoGHWwRaCS
 06Uz/+xDG0iJR3NTQZOfAA1GLQMF1F0GO5ce4nZvO1GqGNTBkHtjLBHLADh7YlAWr/bFDakdwkIxf
 demMSiNoX6aKnjLdvvm0WakguKvC0aTfDFZyul2fs=;
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>
Date: Thu, 12 Dec 2024 12:22:21 +0100
Message-ID: <6965367.ZqKit0hgWb@silver>
In-Reply-To: <2475109.TFnaqUCzQF@silver>
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
 <20241211225500.GH3387508@ZenIV> <2475109.TFnaqUCzQF@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thursday, December 12,
 2024 11:17:06 AM CET Christian Schoenebeck
 wrote: > On Wednesday, December 11, 2024 11:55:00 PM CET Al Viro wrote: >
 > On Wed, Dec 11, 2024 at 01:32:26PM -0800, Linus Torvald [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [5.189.157.229 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [5.189.157.229 listed in sa-accredit.habeas.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tLhHA-0006PL-Lz
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

On Thursday, December 12, 2024 11:17:06 AM CET Christian Schoenebeck wrote:
> On Wednesday, December 11, 2024 11:55:00 PM CET Al Viro wrote:
> > On Wed, Dec 11, 2024 at 01:32:26PM -0800, Linus Torvalds wrote:
> > > On Wed, 11 Dec 2024 at 13:04, <asmadeus@codewreck.org> wrote:
> > > >
> > > > Christian Schoenebeck's suggestion was something like this -- I guess
> > > > that's good enough for now and won't break anything (e.g. ACLs bigger
> > > > than XATTR_SIZE_MAX), so shall we go with that instead?
> > > 
> > > Please use XATTR_SIZE_MAX. The KMALLOC_MAX_SIZE limit seems to make no
> > > sense in this context.
> > > 
> > > Afaik the VFS layer doesn't allow getting an xattr bigger than
> > > XATTR_SIZE_MAX anyway, and would return E2BIG for them later
> > > regardless, so returning anything bigger wouldn't work anyway, even if
> > > p9 tried to return such a thing up to some bigger limit.
> > 
> > E2BIG on attempt to set, quiet cap to XATTR_SIZE_MAX on attempt to get
> > (i.e. never asking more than that from fs) and if filesystem complains
> > about XATTR_SIZE_MAX not being enough, E2BIG it is (instead of ERANGE
> > normally expected on "your buffer is too small for that").
> 
> So that cap is effective even if that xattr does not go out to user space?
> 
> I mean the concern I had was about ACLs on guest, which are often mapped with 
> 9p to xattr on host and can become pretty big. So these were xattr not 
> directly exposed to guest's user space.

AFAICS it is not capped in this particular case: v9fs_fid_get_acl() calls
v9fs_fid_xattr_get() for getting the xattr, which in turn calls p9 client
functions to retrieve the xattr directly from 9p server (host). So the regular
Linux VFS layers are not involved here.

I also see no limit applied in fs/posix_acl.c when encoding/decoding ACLs.

And 9p server is not necessarily a Linux host, hence Linux's limit for xattr
do not necessarily apply.

So to me KMALLOC_MAX_SIZE (or better: 9p client's msize - header) still looks
right here, no?

/Christian





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
