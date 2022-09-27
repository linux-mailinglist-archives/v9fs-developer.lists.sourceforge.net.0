Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFD25EBBBE
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Sep 2022 09:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1od5DE-0007Eb-Ak;
	Tue, 27 Sep 2022 07:41:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1od5DD-0007EV-9h
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 07:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cR7ikUHYnUPghlLNjXmVrXMYHIZ26Vu33bJeLhXaG5E=; b=bxcSXErxPj2eSuj3RrX900hi3n
 ykseZs3udTQcXNfRJer+vig7ayE7kOKuZBoFSoKESpeSFvVfXlOfKhqIZMYspNQDW6WO271vpoKZ3
 gDiOe3dTFBk3OhgKoVQdA+Y+iRp5tQKn//p1UQ5xHE+zy4Tf1Xnn4YKZgBu51f5BLslk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cR7ikUHYnUPghlLNjXmVrXMYHIZ26Vu33bJeLhXaG5E=; b=HxWUPZ62xLSDeSMJHw+XUnFogH
 skmPlG4DGxL6YpU60ZZ7Cz8OGLhSdHV0YvN4nv2BKfRKd5fvxRhWiry+/y5aQTmaEOi976vB3Ivb0
 dqmbI4lOKpfxfKP+aqMwqcxCjQICrKMJsRchpthRNo3OFGdClX4m8qUik1tMfOOYJs4U=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1od5DO-004Deq-R0 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 07:41:15 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A92C468AA6; Tue, 27 Sep 2022 09:41:01 +0200 (CEST)
Date: Tue, 27 Sep 2022 09:41:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <20220927074101.GA17464@lst.de>
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler
 wrote: > I suggest that you might focus on the acl/evm interface rather than
 the entire > LSM interface. Unless there's a serious plan to make [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1od5DO-004Deq-R0
Subject: Re: [V9fs-developer] [PATCH v2 00/30] acl: add vfs posix acl api
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
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
> I suggest that you might focus on the acl/evm interface rather than the entire
> LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
> I don't see how the breadth of this patch set is appropriate.

Umm. The problem is the historically the Linux xattr interface was
intended for unstructured data, while some of it is very much structured
and requires interpretation by the VFS and associated entities.  So
splitting these out and add proper interface is absolutely the right
thing to do and long overdue (also for other thing like capabilities).
It might make things a little more verbose for LSM, but it fixes a very
real problem.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
