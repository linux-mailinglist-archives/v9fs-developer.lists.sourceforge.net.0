Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB5244F24F
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Nov 2021 10:44:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mlpa2-00077w-1d; Sat, 13 Nov 2021 09:44:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <laurel.cts.tech.ltd1@gmail.com>) id 1mlpZz-00077m-J2
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Nov 2021 09:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1Fl+m38ypPUGndBvjQzB5R8ccvIz0RcpfgUHFZoWjs=; b=MfeHl90S0EAGwTMcMYTuis/JUL
 IpuQlxe461dJAMe6fvH6Qvfybu/M0zsejZ3a+X3/2IilApbzIkTECd3YodrACIHF03+msI4OslAes
 nHttSedmVosqDRr92ltyiAaky8SaV9ufDACJ3p4Em1+vul42KdmO4+3eDspgOgNWHYFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=d1Fl+m38ypPUGndBvjQzB5R8ccvIz0RcpfgUHFZoWjs=; b=U
 sCTO0epYtyh90AhVHTzfE4MaXhZWEcvYAozzb3q9PH8R65Kcj9Xyoc0HKHNbkHJScnnoJ6fIK4SQ0
 Xla/74tnXfFH6oliT9hiq/LFDOKfWMk0wbptZ45KTl9KouWTL7brYBbFIK0zghBf+/H/i6tJmkJr7
 SxlxFPPz6tjMA/Ps=;
Received: from server.chococherri.com ([103.108.220.190])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlpZv-00067o-Jw
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Nov 2021 09:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=chococherri.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1Fl+m38ypPUGndBvjQzB5R8ccvIz0RcpfgUHFZoWjs=; b=N7Wz4ztp24LAuZgCsmpOtmsDPd
 wupSp+D+D1FQy47FyyOwEtdOpB73wYL6j/vYfCho480F0Kis5jzwnx8qYfX8oephrGDkbzHDhxTY8
 9lpeLGNFHjQ+k1NllrsD/Ugz65BbpCSCIf2YGmKvJsnVPYmoQuX4pEDeeJ9fEK/FAYN2SCXMbvLkK
 x8SK/NYTNo/NzknKp+7mb1gbRvfnEtuianqUylOcDbVYwrb40w8aCfilWMN9Sh4CTT69fFV/ERtFh
 SpHAys2AF3JVXt+pga4CWYou6wsOzF7MhgjUC2ASQ/lDIV+dSanzP/HoSPMDl0Mk/h0tlfwsYhXOZ
 ARBFehYg==;
Received: from cherrich by server.chococherri.com with local (Exim 4.94.2)
 (envelope-from <laurel.cts.tech.ltd1@gmail.com>) id 1mle74-0007D7-Vg
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Nov 2021 02:59:35 +0530
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: www.chococherri.com/vendor/phpunit/phpunit/src/Util/PHP/leafmailer2.8.php for
 147.124.212.115
X-PHP-Originating-Script: 1001:leafmailer2.8.php
Date: Fri, 12 Nov 2021 21:29:34 +0000
From: CTS- Laurel <laurel.cts.tech.ltd1@gmail.com>
Message-ID: <80e5fd52cc3515506279148d02e45ffd@www.chococherri.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.chococherri.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1001 993] / [47 12]
X-AntiAbuse: Sender Address Domain - gmail.com
X-Get-Message-Sender-Via: server.chococherri.com: authenticated_id:
 cherrich/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: server.chococherri.com: cherrich
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Trust wallet support https://forms.gle/cKEpVfvbTX49WSpK6
 Trust wallet support 
 Content analysis details:   (5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [103.108.220.190 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laurel.cts.tech.ltd1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [laurel.cts.tech.ltd1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [laurel.cts.tech.ltd1[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 PHP_SCRIPT             Sent by PHP script
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1mlpZv-00067o-Jw
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Trust Wallet
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
Reply-To: laurel.cts.tech.ltd1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net




  
  


Trust wallet support

https://forms.gle/cKEpVfvbTX49WSpK6



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
