Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1147C655806
	for <lists+v9fs-developer@lfdr.de>; Sat, 24 Dec 2022 03:08:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8txd-0005yn-Ct;
	Sat, 24 Dec 2022 02:08:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <9ca63c9e73a047353e17845c6f4cfe5b@atl4wpplatweb08d.registeredsite.com>)
 id 1p8txc-0005yf-4G for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Dec 2022 02:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gjIRFjQeOgnTqeGGaoLWTO0Jb2agRhIB9+PsozXbdCg=; b=RaOFDcWgxz4hly2gQz7wULwmkK
 lZwhkLFVEI7sReOAsNzR5tiH6E4eGYkCEDHYXSew+9e6RxRMNo4puYBK8vrZWQZuUxajZ9N3XY5o6
 hrXDSAahAZfnhjYQcWH4bIYNbLtj/uR+G25+SZ33GmGsCT25UJSKOVPOiCrFev3PXlbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gjIRFjQeOgnTqeGGaoLWTO0Jb2agRhIB9+PsozXbdCg=; b=R
 C9IZkhqBteCMX97S1ZkhLEVcMkz1208mprFOXNm/+VqtAXSyH2Rnhtlq1CmkojjrL1P5X+hLlBYdT
 oa34NnJMip5oict/jVmk6oaD9F3iACJSc9TzakCB/tZlxEZux0k1VF1kmWck3ie8ZIzfQsQ9qlEO2
 R3XpWFwpfn8F1pSQ=;
Received: from atl4mhfb01.myregisteredsite.com ([209.17.115.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p8txY-009f1q-9q for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Dec 2022 02:08:28 +0000
Received: from atl4mhho05.registeredsite.com (atl4mhho05.registeredsite.com
 [209.17.115.113])
 by atl4mhfb01.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
 2BO1seDx010984
 for <v9fs-developer@lists.sourceforge.net>; Fri, 23 Dec 2022 20:54:40 -0500
Received: from atl4wpplatweb08d.registeredsite.com ([10.30.52.142])
 by atl4mhho05.registeredsite.com (8.14.4/8.14.4) with ESMTP id 2BO1sTmF004170
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <v9fs-developer@lists.sourceforge.net>; Fri, 23 Dec 2022 20:54:29 -0500
Received: from atl4wpplatweb08d.registeredsite.com (localhost [127.0.0.1])
 by atl4wpplatweb08d.registeredsite.com (8.14.7/8.14.4) with ESMTP id
 2BO1rpBC029113
 for <v9fs-developer@lists.sourceforge.net>; Fri, 23 Dec 2022 20:53:51 -0500
Received: (from 9ca63c9e73a047353e17845c6f4cfe5b@localhost)
 by atl4wpplatweb08d.registeredsite.com (8.14.7/8.14.7/Submit) id
 2BO1rp6D029112; Fri, 23 Dec 2022 20:53:51 -0500
Date: Fri, 23 Dec 2022 20:52:21 -0500
To: v9fs-developer@lists.sourceforge.net
From: Parcel delivery <Support-87@ipgeolocation.io>
Message-ID: <7177ce67f867be7ae2656e9727d9ef30@ipgeolocation.io>
MIME-Version: 1.0
X-Spam-Score: 4.5 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  DHL Express Your DHL package will be delivered to you today
    by our parcel delivery service.   
 
 Content analysis details:   (4.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [209.17.115.113 listed in dnsbl-1.uceprotect.net]
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
              [Blocked - see <https://www.spamcop.net/bl.shtml?209.17.115.113>]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: static.blog4ever.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.17.115.55 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1p8txY-009f1q-9q
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoKCgoKREhMIEV4cHJlc3MKCgoKWW91ciBESEwgcGFja2FnZSB3aWxsIGJlIGRlbGl2ZXJl
ZCB0byB5b3UgdG9kYXkgYnkgb3VyIHBhcmNlbCBkZWxpdmVyeSBzZXJ2aWNlLgoKwqAKCgoKSW4g
b3JkZXIgdG8gc2VuZCBpdCB0byB5b3UgeW91IG5lZWQgdG8gdXBkYXRlIHlvdXIgc2hpcHBpbmcg
YWRkcmVzcwoKT25jZSB3ZSBoYXZlIHJlY2VpdmVkIHRoZSBhZGRpdGlvbmFsIHNoaXBwaW5nIGNv
c3QsIHdlIHdpbGwgY29udGFjdCB5b3UgdG8gYXJyYW5nZSBkZWxpdmVyeS4KCsKgCgpTdGFydCBE
ZWxpdmVyeQoKwqAKClJlbWluZGVyOiB0aGlzIHByb2NlZHVyZSBpcyBtYW5kYXRvcnkgdG8gcHJl
dmVudCB5b3VyIHBhY2thZ2UgZnJvbSBiZWluZyByZXR1cm5lZCB0byBzZW5kZXIKCsKgCgoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
