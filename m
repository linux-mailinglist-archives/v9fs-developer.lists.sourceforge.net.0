Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 351AB68397E
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Jan 2023 23:43:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMzLi-0007Ui-HN;
	Tue, 31 Jan 2023 22:43:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gunda@ns1.potatobdltd.com>) id 1pMzLe-0007UX-HF
 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 22:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Content-Type:MIME-Version:Reply-To:
 From:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XZoBUC2aMeX6Bqm7fpOPgqIRl1N4hAabPxzzbfCns7k=; b=QA3HuClZQ/bPUw1TvHNlHult1Z
 Za3e9wh0uCNT2DHrAIy1fhubX0ZKRA5WXHaYTcBx17TtIcKIeDKj6gVuSTkeP0VDB7LpudZ6mvYul
 ZTZgHISz64OMLR/AzypcbNz99fCHzbv5COSa0sHJbFcdFZswFA+CyqUQLo3o3hirTqss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Content-Type:MIME-Version:Reply-To:From:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XZoBUC2aMeX6Bqm7fpOPgqIRl1N4hAabPxzzbfCns7k=; b=a
 l6QSGH4l+mzWmXNDFKOYmxQ9H6yXoX2bR8Lbm/VYWA3l9L+k3QsNONgMDRCebZbLLDbHng4+ovc4T
 qmT+JxlubZMlXTSzvJKZoWYiB6DLwtQRYf6VYJc61LZ6RlEztBnAnIlGsRoyl6xnmrpJsoP/jCM7X
 iIrdzqEZUBpAetYI=;
Received: from ns1.potatobdltd.com ([103.184.25.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMzLb-0004KC-W1 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 22:43:29 +0000
Received: by ns1.potatobdltd.com (Postfix, from userid 1000)
 id 66327C62FB71; Wed,  1 Feb 2023 04:43:21 +0600 (+06)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 1000:piti.php
MIME-Version: 1.0
Message-Id: <20230131224321.66327C62FB71@ns1.potatobdltd.com>
Date: Wed,  1 Feb 2023 04:43:21 +0600 (+06)
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  DHL Unfortunately Failed delivery attempt 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
 DNS
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
X-Headers-End: 1pMzLb-0004KC-W1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] FW : Failed delivery attempt
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
From: DHL via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: shipping-@servic.dhl.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
