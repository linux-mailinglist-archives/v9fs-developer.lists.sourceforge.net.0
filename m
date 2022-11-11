Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 872E3625007
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Nov 2022 03:12:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1otJXM-00071N-Lg;
	Fri, 11 Nov 2022 02:12:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1otJXK-00071G-Ki
 for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 02:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Y4dEB1qb4220Gr3PWRUeHdgik0Tcm49s6ZwF3lvl+o=; b=NR6HH2fgYE7kYOMwot4XzVN4oH
 Hq+h/pfdKKB4xpgTccGPUisWoestXkNWtRi5IMG2GJK6osVd2PCT8Y8RRX0WIpGeffYkdCPwAE2Sb
 mnLeQMvcCCSGhJ1RbIQOJmYEoKTQolfidV2FW6aZ7XrBYg3Q0D5ZvEzrT5cEm4mFTAC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Y4dEB1qb4220Gr3PWRUeHdgik0Tcm49s6ZwF3lvl+o=; b=O8Bs6InUQQLep1T1zTUZ8Fhslx
 s5ARAvOQB5YA+6di3+ppsfXDoZpbW0yxmnx5GtLko38WKdLzeIkqX3jhS1+Dw/oy1sylJyBuDad5b
 cKjwypeJiy+dhb42DNFqK1ueela9Kqu7WQ4iNeJKwdSKq7UfjOusT/2r4L4L5oO/A/GM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1otJXH-003jpj-N3 for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 02:12:54 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DE07BC020; Fri, 11 Nov 2022 03:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668132765; bh=1Y4dEB1qb4220Gr3PWRUeHdgik0Tcm49s6ZwF3lvl+o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0C35RTyzaUS0y9kuU5KslEIRYZXJoSUKB7WD2fxs/ik69Lw2YpbqqwDTd5P+tBnkf
 Ndti+YPTGmXRksTDm12F34xuR8fQPbMrk/3ZtfKeoqL+IOLS4xoEWE5KYQM10skOfY
 Bakjuv1YzqKIxylwbiY4SvMGHsqaT73s78qI+GNpfkMMOb+6tceCrC4EXNA1WQcQ80
 xx+VvOoYa2I9QTFhoc0iya4Ln3RQU2mNEtJd1Rt36CqhKwdLbITvdRVzvVtAuQ9KQ+
 rN90PDJlKuV637+uR6reyWhittd3h6nyjy0Utvs86dlIHw7klDUA43NvefxBP9xtJS
 QeyTfuZ80/0kA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 11D80C009;
 Fri, 11 Nov 2022 03:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668132765; bh=1Y4dEB1qb4220Gr3PWRUeHdgik0Tcm49s6ZwF3lvl+o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0C35RTyzaUS0y9kuU5KslEIRYZXJoSUKB7WD2fxs/ik69Lw2YpbqqwDTd5P+tBnkf
 Ndti+YPTGmXRksTDm12F34xuR8fQPbMrk/3ZtfKeoqL+IOLS4xoEWE5KYQM10skOfY
 Bakjuv1YzqKIxylwbiY4SvMGHsqaT73s78qI+GNpfkMMOb+6tceCrC4EXNA1WQcQ80
 xx+VvOoYa2I9QTFhoc0iya4Ln3RQU2mNEtJd1Rt36CqhKwdLbITvdRVzvVtAuQ9KQ+
 rN90PDJlKuV637+uR6reyWhittd3h6nyjy0Utvs86dlIHw7klDUA43NvefxBP9xtJS
 QeyTfuZ80/0kA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ac7bc1ba;
 Fri, 11 Nov 2022 02:12:34 +0000 (UTC)
Date: Fri, 11 Nov 2022 11:12:18 +0900
From: asmadeus@codewreck.org
To: shaozhengchao <shaozhengchao@huawei.com>
Message-ID: <Y22vgvsTUj1F8Gog@codewreck.org>
References: <20221110122606.383352-1-shaozhengchao@huawei.com>
 <Y2zz24jRIo9DdWw7@codewreck.org>
 <61814668-2717-d140-5a01-f6a46e05de09@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61814668-2717-d140-5a01-f6a46e05de09@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  shaozhengchao wrote on Fri, Nov 11, 2022 at 09:23:12AM +0800:
 > > Please tell me if you want to send a v2 with your words, or I'll just
 > > pick this up with my suggestion and submit to Linus in a wee [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1otJXH-003jpj-N3
Subject: Re: [V9fs-developer] [PATCH net] net/9p: fix issue of list_del
 corruption in p9_fd_cancel()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, yuehaibing@huawei.com, edumazet@google.com,
 weiyongjun1@huawei.com, kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 pabeni@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

shaozhengchao wrote on Fri, Nov 11, 2022 at 09:23:12AM +0800:
> > Please tell me if you want to send a v2 with your words, or I'll just
> > pick this up with my suggestion and submit to Linus in a week-ish after
> > testing. No point in waiting a full cycle for this.
>
> 	Thank you for your review. Your suggestion looks good to me, and
> please add your suggestion. :)

I've done quick checks with a tcp server and pushed it for next.

I'll try to remember to send it to Linus mid next-week.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
