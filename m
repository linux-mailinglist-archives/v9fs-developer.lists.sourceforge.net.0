Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6EC5B45E2
	for <lists+v9fs-developer@lfdr.de>; Sat, 10 Sep 2022 12:17:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oWxYW-0000SJ-HZ;
	Sat, 10 Sep 2022 10:17:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kuj@fla.de>) id 1oWxYM-0000SC-Kn
 for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Sep 2022 10:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:List-id:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YUGJo7rMBrVFSnneCmNi/xgCPFtMFExangem3kqtyFc=; b=i3pLEy55Va/bBAl3e7k50W05Ux
 T6B+EDKJpZB9TdcyRHxvIS37E5+azKRJTb/RUeYSEbKB9SvmaRqUATfqSKZaS8vLUNhRnoGdd702B
 4LXNHzvaKp51V9qQvkW6vDvxC0KkFsEFfEpj2lYjv2Mor14vQMvX/sXttues90PdJ9p0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:List-id:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YUGJo7rMBrVFSnneCmNi/xgCPFtMFExangem3kqtyFc=; b=R
 6J7Z01xhsr7LfLFIfKCSB0VP/gXkT52JAAvQNH835TjX4eN7XCW/O2y0oBqSbTVOH8C64OAZUPgZT
 t3P+N6EOkl0cPcrs/+ErJn/v+AVNPu40yGRyGXTmntFdKrEpas0aFw0Hi5vBhvkyDgVn6VXV/O87h
 VKM3OYGcjWHCrxiI=;
Received: from [64.235.37.118] (helo=fla.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oWxYI-0041BG-GZ for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Sep 2022 10:17:34 +0000
To: v9fs-developer@lists.sourceforge.net
Date: Sat, 10 Sep 2022 12:01:06 +0200
From: dkb online <sjaaksmit@fla.de>
Message-ID: <a698a589408f909afc7feedd83c09a47@fla.de>
MIME-Version: 1.0
X-mailer: Cabestan DMS
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  &nbsp; &nbsp;DKB Sehr geehrter Kunde 
 Content analysis details:   (2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: locations-villas-vacances.fr]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom; id=kuj%40fla.de;
 ip=64.235.37.118; r=util-spamd-2.v13.lw.sourceforge.com]
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo; id=fla.de;
 ip=64.235.37.118; r=util-spamd-2.v13.lw.sourceforge.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_HUGE    BODY: HTML font size is huge
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1oWxYI-0041BG-GZ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Wichtig !
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net







  
    
      
&nbsp;
    
    
      &nbsp;DKB
      
      
    
    
      
      Sehr
geehrter Kunde
      
Wir bedauern, Ihnen mitteilen zu m&uuml;ssen, dass wir Ihr Konto
vor&uuml;bergehend eingeschr&auml;nkt haben. Gem&auml;B der
neuen Gesetzgebung sind wir verpflichtet, alle unsere Firmenkonten in
regelm&auml;Bigen Abst&auml;nden auf die G&uuml;ltigkeit
der gespeicherten Daten zu &uuml;berpr&uuml;fen. Eine
&Uuml;berpr&uuml;fung Ihres Kontos ergab, dass Sie das neue
Sicherheitssystem&nbsp;Dkb
TAN2go&nbsp;noch
nicht aktiviert haben.
      
Bitte schlieBen Sie diesen Vorgang sofort ab, indem Sie auf den unten
stehenden Link klicken
      &nbsp;
      
    
    
      
      Weiter
&gt;
      
    
    
      &nbsp; &nbsp; &nbsp;
    
    
      
      Mit
freundlichen Gr&uuml;ken
      Deutsche
kredit bank &copy;2022.
      
      
    
  


  
    
    
    
      
    
    
      &nbsp;
    
    
      
    
  


eqfd



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
