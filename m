Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA09E2EFBC4
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jan 2021 00:41:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ky1O2-0008I6-St; Fri, 08 Jan 2021 23:41:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1ky1Nw-0008Ho-Et
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 23:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EIJ3VFsukrboXt6dlSV6x9vCPLwaTFNwnBDwe0e29MA=; b=K/LEB++oKgkzA/M8g48o8T4cLM
 9s9ju/Y91Yx2wQk1DM0bBe39dC9vJTZ8Q2F5vQA2LbZ4oAnT6FgVXqcXFvVmGn2HcdH69X9qiyrQr
 C7KruYCor2WyGO2dOp0XSFxbWVDU81l12y3islJRzWAEXZzjqWrR0xw1Bk2WXoMwzas0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EIJ3VFsukrboXt6dlSV6x9vCPLwaTFNwnBDwe0e29MA=; b=KVR6N+I8ZmXKAImxbYV7zm//F9
 WuT9HBK8CS/0nPYHt6+mGX1MNT3Ls7SSY6kY0XkrxL1r8glQO1XT2PUsOFvm9nOX9H8izTDl/Bcfl
 XMnu0DTeSpWI3HkPA97cnEZI2z4XSYpCeygO5GJoUbDYDkdRvYz5SOw8sB2covp8/tgw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ky1Nd-001YMD-FG
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 23:41:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 503D1C01B; Sat,  9 Jan 2021 00:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1610147764; bh=EIJ3VFsukrboXt6dlSV6x9vCPLwaTFNwnBDwe0e29MA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ljRVZFYdlSHVLjOlc7/r5zZfWa2AoPX5DSdsq4hSzf+OVrSVOLqGEON/HK/+aMOd6
 87Qll45jko8fwcynw3zSafrwDo1KwXtt0aVP5McmDCJgJDzv1yxAFsmBRHPPDCuR/5
 SCOKroFpmns7CiMThpAtTEH8RiLJNJlmkrU9dSNBPLuiuRzE1CGQ4lx6HGKp52Q1/M
 BRWcJwf/3Qg8qGc6HfQtIRuOuhaRIal+ZOAL69ikSMMCwaAGGTm0/+6fcNh3m4OeFg
 xww/bK5y4RUn+89nKLMRMx9rbedjgU2Tn4+ByJWypv51YV7Zb5Poh3r9EbP3y3hLW0
 8Nwn8tKzSNJ0Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with SMTP id 8C2A8C01B;
 Sat,  9 Jan 2021 00:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1610147763; bh=EIJ3VFsukrboXt6dlSV6x9vCPLwaTFNwnBDwe0e29MA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yV6g5bexMO5FrJLLiz/eZhdNh1x37pn5Exnk/tpHMxDqb/RnGFoksOQYMlk7mSpeJ
 EcZ2s9CscKZZWQHkHZtHP+zqKwVO1u682vzlUt/GbTieZUN6isBJd7U2qu4Oh3FAxk
 mrsgVdrMj8WaRHyafIlIZGwEL5ujD95gZEhYtCUefK7b0lovU46dfVfN6Y6yQf+MmZ
 Behz+pz5ZdPKhZb0WOYeN2PCAXrM0NzASsVDLcdVPvTkDhnhLQDf2JE/qCxpUYx5mz
 OIJ8dbC14sB36IeQWINcAQ6X2qSmKyh7kXyC9Ml65R+mivWyW6N+S96jZPAvpt18Nn
 QClq5VEPlaYQw==
Received: (from asmadeus@codewreck.org)
 by tyr.codewreck.org (mini_sendmail/1.3.9 19Oct2015);
 Sat, 09 Jan 2021 08:16:00 JST (sender asmadeus@tyr.codewreck.org)
Date: Sat, 9 Jan 2021 08:15:45 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Message-ID: <20210108231545.GA42582@tyr>
References: <20210108224650.25872-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108224650.25872-1-rikard.falkeborn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1ky1Nd-001YMD-FG
Subject: Re: [V9fs-developer] [PATCH] 9p: Constify static struct
 v9fs_attr_group
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
Cc: ric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Rikard Falkeborn wrote on Fri, Jan 08, 2021 at 11:46:50PM +0100:
> The only usage of v9fs_attr_group is to pass its address to
> sysfs_create_group() and sysfs_create_group(), both which takes pointers
> to const struct attribute_group. Make it const to allow the compiler to
> put it in read-only memory.
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Thanks, taking it.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
