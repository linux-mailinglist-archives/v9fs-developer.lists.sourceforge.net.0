Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 958E45B45F7
	for <lists+v9fs-developer@lfdr.de>; Sat, 10 Sep 2022 12:54:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oWy8J-0001Fi-8M;
	Sat, 10 Sep 2022 10:54:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kuj@fla.de>) id 1oWy8G-0001FY-WA
 for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Sep 2022 10:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:List-id:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i14oKkH9VjuhYikrnLK+0vfAbLKQ8W5ZBZzPu1aNVK8=; b=S07tatzGVKuhtN5rRWGxFgCxaW
 RkIluHUtFb7k9JJDT9BNTCkPrhEeO4ooOgKsnCRxSHFPzNk5/HBGGWXjvdshfVF3bD60+aEpPW7OM
 K3sx4AI0hnPtdnacRcdy9vrTEwWej9inytI2SqJrIfZMDBp4dc0oDxvovQMUXgJUt6fY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:List-id:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=i14oKkH9VjuhYikrnLK+0vfAbLKQ8W5ZBZzPu1aNVK8=; b=k
 Jex0jqGOwcMCaqKVKCQMCkCBld5mb/RAaBwUrgL4S8n2mYazB0kxGKERxg3eQgmb2sYBKjxh/DQzR
 DUSfeuXKyqy7tfHB/vgf0t8nNUvISuPn9dmOkVC8v/t5Bl8qr5N615TaBAhbugA61SC1xCFIHVj2R
 +SSCgHzAsOFiITeY=;
Received: from [216.108.228.101] (helo=fla.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oWy8G-0042dn-4I for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Sep 2022 10:54:40 +0000
To: v9fs-developer@lists.sourceforge.net
Date: Sat, 10 Sep 2022 12:46:13 +0200
From: dkb online <sjaaksmit@fla.de>
Message-ID: <7dc25893b1875e46c3986c3ef4721a45@fla.de>
MIME-Version: 1.0
X-mailer: Cabestan DMS
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  &nbsp; &nbsp;DKB Sehr geehrter Kunde 
 Content analysis details:   (5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: locations-villas-vacances.fr]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.108.228.101 listed in zen.spamhaus.org]
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo; id=fla.de;
 ip=216.108.228.101; r=util-spamd-1.v13.lw.sourceforge.com]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom; id=kuj%40fla.de;
 ip=216.108.228.101; r=util-spamd-1.v13.lw.sourceforge.com]
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_HUGE    BODY: HTML font size is huge
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1oWy8G-0042dn-4I
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
