Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E166668226C
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Jan 2023 03:59:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMgrr-0006Fo-RD;
	Tue, 31 Jan 2023 02:59:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gunda@ns1.potatobdltd.com>) id 1pMgrq-0006FW-Cj
 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 02:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Content-Type:MIME-Version:Reply-To:
 From:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XVwkCfcup9IH2K+KdOLAfgzztZjlKTG6ArmZDv5Xc/E=; b=XHnhddyjrA6R9ClgmNnceVPJz+
 RwSNydnTEjZcncnpC/QDzuE6FBu2ykIDwdLVJ7BklNuLzlGTPhnzvZONHpYlW4OfJw3aZq6texAKP
 JV2C7nspMJLWpcUf44DE7SspbSA+QmidMFSuw23nOkTiZX4XnSUZMTDfBYgYYRuBrE5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Content-Type:MIME-Version:Reply-To:From:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XVwkCfcup9IH2K+KdOLAfgzztZjlKTG6ArmZDv5Xc/E=; b=Y
 9SMRwwEwVvFaAVcpsByABwk8th5XcuwqXTEcptBelqOZe5EtEbCY1bVDb5jTab32Y6SL8LxfRoeN3
 h0nRsid+O4cIYdN7tc5RYb3h1y8Hz+NRO9MQk9mT5LMuZiv+O+seX5652Yevs73lxJtn+52r6Qifc
 O5bh5tDcUdGRcJV8=;
Received: from ns1.potatobdltd.com ([103.184.25.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMgrn-0007i9-Qe for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 02:59:29 +0000
Received: by ns1.potatobdltd.com (Postfix, from userid 1000)
 id 9D268C812CE6; Tue, 31 Jan 2023 08:42:55 +0600 (+06)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 1000:piti.php
From: DHL Express <wbm@abc.gundapanda.com>
MIME-Version: 1.0
Message-Id: <20230131024255.9D268C812CE6@ns1.potatobdltd.com>
Date: Tue, 31 Jan 2023 08:42:55 +0600 (+06)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  DHL Unfortunately Failed delivery attempt.​ 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
X-Headers-End: 1pMgrn-0007i9-Qe
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your package cannot be delivered
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
Reply-To: wbm@abc.gundapanda.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
