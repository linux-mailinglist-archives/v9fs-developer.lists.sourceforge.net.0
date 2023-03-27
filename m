Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E95266C9947
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Mar 2023 03:14:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgbQx-0000GZ-JR;
	Mon, 27 Mar 2023 01:14:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pgbQr-0000G2-Us
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 01:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nEJJQR2ddqec0DlXYX+DdQG2y9p8snxAEMnNWRavwn4=; b=WjvOzDWvw79cDWLzwKkwD7QsqB
 RMxgEZHbG/wpuXRO90y4QTqq3IJ77+2Vf+Zl9uSaHt3yyWFpHEDYLzoH7LAnvy24H74fteQM6AChi
 BG/v8r5828/rHs2q63rZqEbYQirvamwWgvRfTNb1U5sRpQyFiL65WHozyEz4257VYwdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nEJJQR2ddqec0DlXYX+DdQG2y9p8snxAEMnNWRavwn4=; b=XURjr7I1NBNH+7rqUQgC9ysoUV
 3gh9NFMgCxF8Z3DJjvbhfkPdkyLTbr+4o7QIAcozYVOdJkpSt++X6Rv+JSkwWwe/v5dNaq06RnnAW
 3zdtAepvVhvCqh3pOHg5AVLviWYBdxRmRwEaI6pI51lozjFy6KamUY2r6siV5C2coi2s=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgbQq-0005Rf-Cz for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 01:13:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 71F8CCE0FA4;
 Mon, 27 Mar 2023 01:13:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6064C433EF;
 Mon, 27 Mar 2023 01:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679879624;
 bh=yfbPju2FQCcvrpdYURYwZjYyIzP7egQKYla36O+Chio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tYu61ke+tpelb/MYYNCugHQ6exFV5d65dB5YyseLUy5iOtnbxACT6bJguU/GkkCDS
 LCnMItBjScHC1sXhk7p0ZJJgcWMjFAg/4notTX7dIEZB6KVbM3oWi6E/KqsIU8JEUy
 9B+cUDOB02JnAOWG6+js0+I8At2nHw5oYls3Al0Hx6TwnfiRbBYsgn/pTRvc0EMQDt
 vaIlEDMYcWmLThPgMSGgucsXwByhC+mLvhk25CLyirUSxxAGkqoX/e/hbDkiXVmMyc
 JkJkJbjDIlVBXDnsNUy+idExRLIBlKFeZy+ysfNd5oGMaKeGLgDdL96Mnz4OmmEUUO
 lZWFDN1hO0Fzw==
Date: Mon, 27 Mar 2023 01:13:41 +0000
From: Eric Van Hensbergen <ericvh@kernel.org>
To: Ivan Orlov <ivan.orlov0322@gmail.com>
Message-ID: <ZCDtxaf7FT/wr9IC@7e9e31583646>
References: <20230311125025.24605-1-ivan.orlov0322@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230311125025.24605-1-ivan.orlov0322@gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Applied, thanks! [1/1] 9P FS: Fix wild-memory-access write
 in v9fs_get_acl commit: 707823e7f22f3864ddc7d85e8e9b614afe4f1b16 Best regards, 
 -- Eric Van Hensbergen <ericvh@kernel.org> 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pgbQq-0005Rf-Cz
Subject: Re: [V9fs-developer] [PATCH v3] 9P FS: Fix wild-memory-access write
 in v9fs_get_acl
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, v9fs-developer@lists.sourceforge.net,
 himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Applied, thanks!

[1/1] 9P FS: Fix wild-memory-access write in v9fs_get_acl
      commit: 707823e7f22f3864ddc7d85e8e9b614afe4f1b16

Best regards,
--
Eric Van Hensbergen <ericvh@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
