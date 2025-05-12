Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8457AB314E
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 May 2025 10:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r4Q0hqDQmuRYkSCezwUWzG3OljiS47X08n3WoH+AE8A=; b=mCJHZTVQaCxf+akzbv8iUIc3v+
	SYbM70SK2ydXzf3yXY2bxkYrGP9if+Xmrf0+SW8rjme1pLZ7JJrZNC0JT/+VjP93rCuFDppwkgnZn
	38PbWrmz567+MPcRTh9Rbs3dte4Z/w3MyIFa0tKAW+lb+rDj9JmmNGf0DlxIYZXyvjdc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uEOKd-0001Ys-Co;
	Mon, 12 May 2025 08:16:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brendon.roy@primefinix.com>) id 1uEOKc-0001Yf-Go
 for v9fs-developer@lists.sourceforge.net;
 Mon, 12 May 2025 08:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mZMd3f26MpswmzYZZn/Tr1Z4PC0U9JwB1C0CWQHeQ5I=; b=hWdW7IUmGXpn5lhDLPPInFExM3
 MBUuhOE745t1cNAuw1p5/V1BTrEKlWJ+s8CQTDrmc1nD6FQQ6lp6bmnaXcTFAbuFy/CxsQujOpEYs
 dpVtZcypaQswKue5+P6ZHm1a9J48toEHRO/vAzR7TAfzig3JielBfFbDrdaaCrH1UjRE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mZMd3f26MpswmzYZZn/Tr1Z4PC0U9JwB1C0CWQHeQ5I=; b=F
 P3/xak3is5KCjr2qnnno/Xl/2YvZ+zSElyOG1Y2RmOjUJmHEB/CpY/F4/xcmigHh+3lac/6FFOY7I
 pBOdKPkQcKe86QAuZvL3/AN/+HutnITwkwrTnCJxoLVqTDh5tCLksxEwn0hdq7U3QQYsMaMX+rxWh
 iecwtWQSOhfLUsME=;
Received: from mail.primefinix.com ([141.95.160.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uEOKX-0005xh-Np for v9fs-developer@lists.sourceforge.net;
 Mon, 12 May 2025 08:16:14 +0000
Received: by mail.primefinix.com (Postfix, from userid 1002)
 id 9D2D4A552E; Mon, 12 May 2025 10:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=primefinix.com;
 s=mail; t=1747037736;
 bh=mZMd3f26MpswmzYZZn/Tr1Z4PC0U9JwB1C0CWQHeQ5I=;
 h=Date:From:To:Subject:From;
 b=XaqSBT5Ntgm1grIdyzdCV5OnQhlPKhoLhRvrtLh7dZ6t2Bj3pO0VbBjNpwUGLgKd9
 JZHats5mQUbhp/RgnEVhAR3raB5uxyOcaD9WguzJi/81X8lzfSUkBCU9EyVaqmqRio
 +fRwUp3eyvrq8rJKpQ2L4pZ0DWZd8kVgGUi0Yk1GdJ6wt/6o/mYAa62zIp0+Hzcmnt
 Homf+vEDbEVMj7hZOeqkqvPpNqE05EiToZuMGbF4wnW4YxbTsWK+6XBQ32ZKro0X3k
 CPhSRFludnqXDV+otACvtOjO6ABEaFOyxlanVeHah7Fyt9SLdE/hefMGTC/dtFdWg1
 76oc3HKn2L86g==
Received: by mail.primefinix.com for <v9fs-developer@lists.sourceforge.net>;
 Mon, 12 May 2025 08:15:22 GMT
Message-ID: <20250512084501-0.1.ki.29tcw.0.5zilmn3og7@primefinix.com>
Date: Mon, 12 May 2025 08:15:22 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.primefinix.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, Our dropshipping model for mattresses is gaining increasing
    interest in the market. It’s an efficient way to run a business without
    having to invest capital in warehouse space, logistics systems, or shipping
    operations. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
X-Headers-End: 1uEOKX-0005xh-Np
Subject: [V9fs-developer] New mattresses
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
From: Brendon Roy via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Brendon Roy <brendon.roy@primefinix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8sCgpPdXIgZHJvcHNoaXBwaW5nIG1vZGVsIGZvciBtYXR0cmVzc2VzIGlzIGdhaW5pbmcg
aW5jcmVhc2luZyBpbnRlcmVzdCBpbiB0aGUgbWFya2V0LgoKSXTigJlzIGFuIGVmZmljaWVudCB3
YXkgdG8gcnVuIGEgYnVzaW5lc3Mgd2l0aG91dCBoYXZpbmcgdG8gaW52ZXN0IGNhcGl0YWwgaW4g
d2FyZWhvdXNlIHNwYWNlLCBsb2dpc3RpY3Mgc3lzdGVtcywgb3Igc2hpcHBpbmcgb3BlcmF0aW9u
cy4KCllvdXIgcm9sZSBpcyBsaW1pdGVkIHRvIGFjcXVpcmluZyBjdXN0b21lcnMsIHdoaWxlIHdl
IHRha2UgY2FyZSBvZiBhbGwgb3RoZXIgb3BlcmF0aW9uYWwgcmVzcG9uc2liaWxpdGllcy4gV2Ug
b2ZmZXIgbWFya2V0aW5nIGFuZCBzYWxlcyBzdXBwb3J0LCBoZWxwaW5nIHlvdSBhY2hpZXZlIHNh
dGlzZnlpbmcgZmluYW5jaWFsIHJlc3VsdHMgbW9yZSBxdWlja2x5LgoKV291bGQgeW91IGJlIGlu
dGVyZXN0ZWQgaW4gbGVhcm5pbmcgbW9yZSBhYm91dCBvdXIgcGFydG5lcnNoaXAgcHJvZ3JhbT8K
CgpCZXN0IHJlZ2FyZHMKQnJlbmRvbiBSb3kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
