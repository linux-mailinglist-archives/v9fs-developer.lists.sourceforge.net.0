Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 956BD5BB0C8
	for <lists+v9fs-developer@lfdr.de>; Fri, 16 Sep 2022 18:03:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oZDop-0000rP-BU;
	Fri, 16 Sep 2022 16:03:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <glitch@gameai.cc>) id 1oZDon-0000rB-O7
 for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Sep 2022 16:03:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nuu265CW6LR3KB3W0u60IqqTw+VrGrJ0rJ+bXWSklco=; b=PwIg1FC+1lhMLXlgqgoYvaAyOW
 /DLNrk5E3BihgAruMWowr2Eg6jI6XHJhwbzVgpFOSbHswHgN7CnFZZ9BdphD+cEQLKp5OQ5FeW1a5
 t0K8QukWmIjcPo2lX3PQp41j96aMaDkEA+PKqs5sSvw/paaQpSEOW2qcDv74pGbVCR5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:MIME-Version:Message-ID:Date:Subject:To:
 From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nuu265CW6LR3KB3W0u60IqqTw+VrGrJ0rJ+bXWSklco=; b=PnMLneyVMcA6QTvYqa7ULhuWQW
 apIzoOMr7JTM5tWibWL9bOhZsXrXG6Y9V5ii4hx6dkdwSHOgalH2MvPBgVkJIQfVtU+Okd6L2j/3Z
 2iE1M6Jx28viIPg4ZNdYjPTlPP1kDqWM+GDxGlznzAA/0PJBuqH/1ZdXPUKDE5u6fDWk=;
Received: from gameai.cc ([134.255.225.86])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oZDom-0000k4-Q9 for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Sep 2022 16:03:53 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=gameai.cc;
 s=default; h=Reply-To:From:To:Subject:MIME-Version:
 List-Unsubscribe:Organization:Content-Type; bh=pnoC7yjvilHWKT0/A
 svDJURWK/U=; b=Jv5VI+Nc7ehr4Oqo7Qdfg932YqHfXq6FXRr6SrwdJoARXHF2k
 IjERo1Fq9fr6bn6iYQ5Ho2LF4lJ/pmJBURWR9M1sYB4+V3nfWc9HX8yaEc3FdTbL
 QGZatxCKU9f/WxNbqc0+QqWiS3/1xn7K5dr87rIP9CzMeq6g3+a40A4sA4mvWyBw
 jNvnQBLcDgijvqH+D6DSKXgCm29rNnCSZu6sLfBdlFAW7H+U8NBQX8mi1wO6xjn3
 axmX4IJ+EcfCQRh5cB/NUD5ZTyejoQLdtWY+MlpC2oQwhryYanWkz3rGKAbz7ojA
 Yb+eRfOOPEJ7o1rGPv/E9PyIAsIP24VTEeFwA==
To: v9fs-developer@lists.sourceforge.net
Date: 16 Sep 2022 09:03:37 -0700
Message-ID: <20220916090336.D9B3FE0F06CA5928@gameai.cc>
MIME-Version: 1.0
Organization: lists.sourceforge.net
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The email account storage limit has been surpassed,
 with 99.9%
 of the storage space available when the account was set up still in use.
 Your email has filled up all of your storage capacity, according [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fleek.co]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 HTML_IMAGE_ONLY_28     BODY: HTML: images with 2400-2800 bytes of
 words
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1oZDom-0000k4-Q9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] The mail quota has reached its maximum. "
 ID#:643320
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
From: Mail Administrator Notice #0480 via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Mail Administrator Notice #9103 <glitch@gameai.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The email account storage limit has been surpassed, with 99.9% of 
the storage space available when the account was set up still in 
use.
Your email has filled up all of your storage capacity, according 
to the third notice.
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
