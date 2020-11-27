Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 438EB2C65DD
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Nov 2020 13:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=twYpeVo4M4whC4BIrbb+YZun6WLKgWvWDPv5QM8Ds/c=; b=WBS9ms+MO+7CE11EHRrFrZgSup
	gMqdjhf8ubgWt7hW4ix6m5N9vo+2XVCRIYh1GiM8RVn+YVvWzIHqVQufsnJ5O0k99Xt1bsWVeVfpl
	/7PIsjzVUyBbM41/m2vpnpcvn0ZIg2qGGwwNke3mpx5Jlf0rSE9mT3zDLxvZwJ/VbUfs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kid7z-0002Zs-6c; Fri, 27 Nov 2020 12:45:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pt@hinewdubai.pw>) id 1kid7y-0002Zk-3t
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Nov 2020 12:45:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WhLTfXNKIxA+v1uByff3lXoTWRc3e4Dfognnpm7d4AM=; b=Y/+3h9ASTxjXcPYjGhcWkDU8RM
 jn5WMC7zM4yFmXB1fzbW7yCI0kMi/3RBUB4ucmEZd3wrjMJC2w/dgWDcH85GsnJyL34OW1MhzhdQ5
 KIsqDEUtF0YqJxwV0wbiAWE4LTev528Tp8r0vwfMvBDw782hrrnV6uZPH/eVVpeoZoV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WhLTfXNKIxA+v1uByff3lXoTWRc3e4Dfognnpm7d4AM=; b=f
 yqMYfmZBwOBX2nK3sE3XN96kxYHwZ7RMBYXdgu0vDhzQL3t6v/IBF3jBMOm3q5PlShKlejF9YU6KX
 8931h6mJB4q7n62oo3SNtF4tRLjA/SbtbmRiuqWITCWsYRxZCYgzrzYhxTu5BgTPaFpi/T6xfcW9c
 hZEjGLw1TyhJ6p+g=;
Received: from ns1.hinewdubai.pw ([104.168.245.162] helo=serve0.hinewdubai.pw)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kid7u-007Cc4-Oa
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Nov 2020 12:45:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=hinewdubai.pw; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=pt@hinewdubai.pw;
 bh=WhLTfXNKIxA+v1uByff3lXoTWRc3e4Dfognnpm7d4AM=;
 b=n+SAxaLpyvDqXT0xajSYhP5n7e8uZgctTrvGTMgPhf12pq+oxaqjtJZSbRN1y2oYYTIOqKuLOebz
 +cktyEX6ntPt8m+7BgF8ZgLXeX0GOfS98VfuqqQgC2/25vuHmhvmwP3jOfutxCkG7+ptxjBQjB14
 4x3bBCfb5r3iB/Ljm4M=
To: v9fs-developer@lists.sourceforge.net
Date: 27 Nov 2020 04:45:24 -0800
Message-ID: <20201127044524.18C5FC62F77334A8@hinewdubai.pw>
MIME-Version: 1.0
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dweh.com]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [104.168.245.162 listed in psbl.surriel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kid7u-007Cc4-Oa
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] new order & signed Profoma Invoice
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
From: Anca Larisa Burneci via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Anca Larisa Burneci <pt@hinewdubai.pw>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello Sir,
 
Did you receive my last email?
Please send confirmation of our new order attached urgently.
Also see attached the signed Proforma Invoice of our last Order.

Regards


Anca Larisa Burneci
DongweHealth Products Manufacture Co., Ltd.
No.228 Shihui Rd, Songjiang,CAMBODIA
Mobile: +81-13386019828
Fax: +81-21-57784148
E-mail: import@dweh.com
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
