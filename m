Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50328710237
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 May 2023 03:11:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q1zVh-0006Ud-Ht;
	Thu, 25 May 2023 01:11:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <account-update@amazon.co.jp>) id 1q1zVg-0006U9-Sq
 for v9fs-developer@lists.sourceforge.net;
 Thu, 25 May 2023 01:11:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vHPIX0PieOxQJecuikoDNPCTEiK1Q6g2AlEW35+R6BI=; b=Ye/a4WBQ5qUI1NwKTnwx/sw+5k
 gQur90akDKcAm2SioqDSPcu4zSlOrrlJomw+NMWLVyG3/JPjUxHK2Qh0Pwxi2XWTYKFlDNLP1X66w
 OxLawXGdOyLfUfDlUfyXEZ3DTDX/M+svPE0D5qgfxq3FinwdCRwVx2VZKV8PxZ1RcCBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vHPIX0PieOxQJecuikoDNPCTEiK1Q6g2AlEW35+R6BI=; b=Z
 Dp3gPZgTEI87xdL4K16E1vdqv7BS0PyOLqzIReZrr4JiLBVp961VVfj44TnnHhOZ4fJT091htjKq4
 LOcQUXgrctBHLRHg2QDUY/FF8ilLalQrLs6aAasSBMkhvqv3Sgj+DiwWHVplxbaTrXoVh8Uo9NNci
 aiXWfwCyvspCn6QU=;
Received: from [80.77.25.232] (helo=VM-261523)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1q1zVg-001nvr-MT for v9fs-developer@lists.sourceforge.net;
 Thu, 25 May 2023 01:11:21 +0000
Received: from 3lyw4 ([127.0.0.1]) by VM-261523 with Microsoft
 SMTPSVC(10.0.17763.1697); Wed, 24 May 2023 17:49:03 -0700
To: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Date: Sat, 30 Dec 1899 00:00:00 -0700
X-Priority: 3
Message-ID: <VM-261523yXz6htQgBy0000bff3@VM-261523>
X-OriginalArrivalTime: 25 May 2023 00:49:03.0589 (UTC)
 FILETIME=[B3C30950:01D98EA2]
X-Helo-Check: bad, Not FQDN (VM-261523)
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お支払い方法の情報を更新してください。Update
    default card for your membership. マイストア? | タイムセール?
   | ギフト券 Amazonプライムをご利用頂きありがとうございます。お客様のAmazonプライム会員資格は、2023/05/27に更新を迎えます。お調べしたところ、会費のお支払�
    [...] 
 
 Content analysis details:   (7.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: demarkobend.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.77.25.232 listed in wl.mailspike.net]
  0.4 INVALID_DATE           Invalid Date: header (not RFC 2822)
  0.0 FSL_HELO_NON_FQDN_1    No description available.
  2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
                             date
  1.8 DKIM_ADSP_DISCARD      No valid author signature, domain signs all
                             mail and suggests discarding the rest
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;id=account-update%40amazon.co.jp;ip=80.77.25.232;r=util-spamd-2.v13.lw.sourceforge.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
  0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
                             "accounts suspended", "account credited",
                             "account verification"
  0.0 HELO_NO_DOMAIN         Relay reports its domain incorrectly
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1q1zVg-001nvr-MT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your account has been suspended
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
From: "Amazon.co.jp via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: account-update@amazon.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
