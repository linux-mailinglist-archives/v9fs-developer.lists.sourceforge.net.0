Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D05145EC769
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Sep 2022 17:16:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odCK8-0007nQ-Eq;
	Tue, 27 Sep 2022 15:16:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sforshee@kernel.org>) id 1odCK7-0007nJ-44
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 15:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WjxCpClxoKMy8MBuDeeaghnptT+98T16G2W6FYtwBeQ=; b=A8jLD8o+OtryOoEYdDevMiZlOE
 2p4/5l17J+MApA9rtsf9zp+9C204f0Ru837gWlWYnRJrVhkdhaMlt0spnBXpQnnWRpNbG0AIN67wk
 HtJ0F6kUOC/SUDtHj0Gg2YbCuxqIlU5quTIOxOxer7mnWDczade2KGbhrTboJjCRb5Lk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WjxCpClxoKMy8MBuDeeaghnptT+98T16G2W6FYtwBeQ=; b=X0NTekohMY2eLU0U/Dq2sPPMpj
 4UQ4J4l3pzP1Ml6CX8v1u5L+DS+fq+up+7Ar2GJUrz2wasid+R1Qezc1Bs6FdsVI/Ax3Q0AOsZgB7
 hQLtruSFf0QnPmqaLwmtEbjl7rFMHlC9Q3m9lYJNhxjdk+0VGo26Z/thpEcRQ8QQYWcc=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odCKI-0002Fc-Rq for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 15:16:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BF1CAB81C5C;
 Tue, 27 Sep 2022 15:16:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56328C433C1;
 Tue, 27 Sep 2022 15:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664291802;
 bh=rcAZBUp0PwJTCX6bTBbA3Tisqexrr45MWrA/dEc4zQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IlHcKKjXExGDsoklcQ4MKzdsk3cGtrk58WOsdiU6X9WElsr6hEWw+wi3h+foumk3b
 I1sp6PELR92YpK0TBLBCJQBErme2MvuJYImkMyvO86s+acgi2xJfQ6VPfkME/kjegN
 dm7RVxv77/zy9QDST5BQa5WFzjfl71lPiDGDbJxsHQ5jJp+KD0BmnmzlLrzAtl5pFD
 6TtkQ/7hQxsfL6PWzj2BSltiVgCpGE1Xmgx1yWHQ4Zixpbh3GlFaBRyJbgU+Y4TPMO
 HSEhNOrT9R4al9XQOt06hirChXFo/Z8+7dNi62I6Juq/9g28aG4UyY894eUYAolmam
 KbrFUDiBu40Fw==
Date: Tue, 27 Sep 2022 10:16:41 -0500
From: Seth Forshee <sforshee@kernel.org>
To: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <YzMT2axDeni7L1O8@do-x1extreme>
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
 <20220927074101.GA17464@lst.de>
 <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 27, 2022 at 07:11:17AM -0700, Casey Schaufler
 wrote: > On 9/27/2022 12:41 AM, Christoph Hellwig wrote: > > On Mon, Sep 26,
 2022 at 05:22:45PM -0700, Casey Schaufler wrote: > >> I suggest t [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1odCKI-0002Fc-Rq
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
 linux-security-module@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Sep 27, 2022 at 07:11:17AM -0700, Casey Schaufler wrote:
> On 9/27/2022 12:41 AM, Christoph Hellwig wrote:
> > On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
> >> I suggest that you might focus on the acl/evm interface rather than the entire
> >> LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
> >> I don't see how the breadth of this patch set is appropriate.
> > Umm. The problem is the historically the Linux xattr interface was
> > intended for unstructured data, while some of it is very much structured
> > and requires interpretation by the VFS and associated entities.  So
> > splitting these out and add proper interface is absolutely the right
> > thing to do and long overdue (also for other thing like capabilities).
> > It might make things a little more verbose for LSM, but it fixes a very
> > real problem.
> 
> Here's the problem I see. All of the LSMs see xattrs, except for their own,
> as opaque objects. Introducing LSM hooks to address the data interpretation
> issues between VFS and EVM, which is not an LSM, adds to an already overlarge
> and interface. And the "real" users of the interface don't need the new hook.
> I'm not saying that the ACL doesn't have problems. I'm not saying that the
> solution you've proposed isn't better than what's there now. I am saying that
> using LSM as a conduit between VFS and EVM at the expense of the rest of the
> modules is dubious. A lot of change to LSM for no value to LSM.
> 
> I am not adamant about this. A whole lot worse has been done for worse reasons.
> But as Paul says, we're overdue to make an effort to keep the LSM interface sane.

So I assume the alternative you have in mind would be to use the
existing setxattr hook? I worry about type confusion if an LSM does
someday want to look inside the ACL data. Unless LSMs aren't supposed to
look inside of xattr data, but in that case why pass the data pointer on
to the LSMs?

Note that the caller of this new hook does not have access to the uapi
xattr data, and I think this is the right place for the new hook to be
called as it's the interface that stacked filesystems like overlayfs
will use to write ACLs to the lower filesystems.

Seth


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
