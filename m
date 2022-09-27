Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F09EC5EBC78
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Sep 2022 09:59:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1od5VM-0005rq-W1;
	Tue, 27 Sep 2022 07:59:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1od5V5-0005rF-1x
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 07:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6cttuBee/Rps4NrcGzU5mx48vNAaqMFZ4Dy7i4SiaNM=; b=OYJA5BLZx7ydBvtzljP6K5hmqJ
 MLI9x0b5se0+oMTIltxAGdzcsGuWW9tW3tNznjZjd4gKyNW64q+js518n6QDPztnR4ju00JQl/f2a
 WwWxcvnLLHGVhQvhxV+h59g6r8VQ3L+OXZkhysbp4jRr7me/Ps5fH6or9po5ygvXE3gk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6cttuBee/Rps4NrcGzU5mx48vNAaqMFZ4Dy7i4SiaNM=; b=FjAuwy9CPz3DaUSI/HnX43lxOy
 E66uAHtB1fiEkfCyIhvO36Nt1znHC9fwlwmSoWgIdC44R2imVC84Xta2oY2DcVehgeh1i/cmenxJb
 9tyxnARdcOx6VAFOyHlQu/MQbUnDCuyn7y1BZ9SVY6bc6viykf8HfzKBtfy97ddjSh9o=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1od5V1-004Efi-J7 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 07:59:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 688F9616D3;
 Tue, 27 Sep 2022 07:59:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E188FC433D6;
 Tue, 27 Sep 2022 07:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664265556;
 bh=xKiJOTKLznhaitvhYKqM3K2U2nS497pmNonv8xVj/Cg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lA2BnX484NXhhV/DHCXHC+R6fwpXR8UuroWiL+kACU4CjDuqIM8EmNgWcohFaLXcm
 t7k4yl+FoJNhAFGhIqqq8YFpD4YFXwucTGsUURe+lw6rAGS7u6OVjAyc4jtZNU7SzW
 EKwYNIjlBCVqXAZnYPGvBlRQXEGVTXtG2R00KWbJFy8DcFpUx6oNopfqrFloZ9AL8F
 ivmles9Ko1gySiGvSFjzsk44dMAm3uPdsHVP86qQnL3IGs6yGu2Y+FR1R4dZep7JFk
 TOuvGFHVe7Z1a1dB2VJ81sItLXDTKZIufx5X8k8CktVJoDrJPMCVdmG5h7E0gMHH+k
 u6REW6do5QU2w==
Date: Tue, 27 Sep 2022 09:59:10 +0200
From: Christian Brauner <brauner@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220927075910.remwae5cz6w2dgob@wittgenstein>
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
 <20220927074101.GA17464@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927074101.GA17464@lst.de>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 27, 2022 at 09:41:01AM +0200, Christoph Hellwig
 wrote: > On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
 > > I suggest that you might focus on the acl/evm interface rather [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1od5V1-004Efi-J7
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
Cc: linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Sep 27, 2022 at 09:41:01AM +0200, Christoph Hellwig wrote:
> On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
> > I suggest that you might focus on the acl/evm interface rather than the entire
> > LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
> > I don't see how the breadth of this patch set is appropriate.
> 
> Umm. The problem is the historically the Linux xattr interface was
> intended for unstructured data, while some of it is very much structured
> and requires interpretation by the VFS and associated entities.  So
> splitting these out and add proper interface is absolutely the right
> thing to do and long overdue (also for other thing like capabilities).
> It might make things a little more verbose for LSM, but it fixes a very
> real problem.

Agreed.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
