Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F52F5E9BC8
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Sep 2022 10:16:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ocjIK-0004OK-Gr;
	Mon, 26 Sep 2022 08:16:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1ocjIJ-0004OE-F5
 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 08:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7froqO6NXHPsi1mNr0MW1+5D6IW21eDajfX81P3VeOI=; b=NEqQLchpgtR8J37A9VuHqkxV3M
 WY+8BEd65kd2pciIntD9TpkjnM2W/hmgYCpoqL7z/iQywJPsNW0YD3cpJxLbWAKvgydozpSO/jsPc
 3exP8qoK9YQ0RMEWDkMlP+HTIDRaLRQYjfL7ScPqICcwbdE5PMN4pcjrxTEfFsGjimxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7froqO6NXHPsi1mNr0MW1+5D6IW21eDajfX81P3VeOI=; b=SuO2dTroQ64bzC/PMk85ProFPN
 i9DFY0prdQS29QmhSpB7MQliECJN5fr4B7pXXChyv0X1jeMhW1uR/jumLvJzocXMXUHTNdI76WcvA
 4Gz2OLHnE4hDYJQXMKwiCHZN756iO7V6BUdAkQTddGXeDohIjoitEO9e2DNMVrjcruDY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ocjII-003ABr-PM for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 08:16:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 86836B81729;
 Mon, 26 Sep 2022 08:16:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36ADEC433D7;
 Mon, 26 Sep 2022 08:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664180203;
 bh=U5p2p/d04U35saRpnmqWtX0yXHd6h87V9OhIvL+IXHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fcbcY689za0EdbcEnEbR9RXAxvNLjdnNN9quEnyCOjR3ILejT+A1CR8/Sb9aWFDBD
 U6gP1gupty3nb4mOj8BlwXmaIF2TWgn7rX4D4ztXvUzWzrZWnDglBb8nVhLsyatUD4
 iVWJKduaiU/AOFiGGBBswq3T4NYNBGGrJuvQN47JJmPdp6I636sOAw6dg5G7QyL73B
 /M9nwOptpR1+zPDYo4TD5cGwnjHFkdh6n4gOnpcPFBgZtt4f9uC2Dv5ZM3sMKHX8JQ
 l1tQQGgZycM9t81XCG6hh13KWLZ/m7lBP74gqVf2NUNHc8JMXw9DiMyApCc0tS67V8
 CPQPcQ3gXzAhg==
Date: Mon, 26 Sep 2022 10:16:38 +0200
From: Christian Brauner <brauner@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20220926081638.qejv7w4udimbg32d@wittgenstein>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <20220922151728.1557914-7-brauner@kernel.org>
 <Yy9I4GQEgH1cj/ke@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy9I4GQEgH1cj/ke@ZenIV>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Sep 24, 2022 at 07:13:52PM +0100, Al Viro wrote: >
 On Thu, Sep 22, 2022 at 05:17:04PM +0200, Christian Brauner wrote: > > +
 struct v9fs_session_info *v9ses; > > + struct posix_acl *acl = NULL; [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ocjII-003ABr-PM
Subject: Re: [V9fs-developer] [PATCH 06/29] 9p: implement get acl method
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
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Seth Forshee <sforshee@kernel.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Sep 24, 2022 at 07:13:52PM +0100, Al Viro wrote:
> On Thu, Sep 22, 2022 at 05:17:04PM +0200, Christian Brauner wrote:
> > +	struct v9fs_session_info *v9ses;
> > +	struct posix_acl *acl = NULL;
> > +
> > +	v9ses = v9fs_dentry2v9ses(dentry);
> > +	/* We allow set/get/list of acl when access=client is not specified. */
> > +	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
> > +		acl = v9fs_acl_get(dentry, posix_acl_xattr_name(type));
> > +	else
> > +		acl = v9fs_get_cached_acl(d_inode(dentry), type);
> > +	if (IS_ERR(acl))
> > +		return acl;
> > +
> > +	return acl;
> 
> *blink*
> 	1.  Set acl to NULL, just in case.
> 	2.  Set acl to either one expression or another
> 	3.  If acl is an ERR_PTR(something), return acl
> 	4.  buggrit, return acl anyway.

A little less elegant than I would've liked it to be. Thanks, I fixed that.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
