Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED7B4C8B13
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Mar 2022 12:45:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nP0ww-000525-Qd; Tue, 01 Mar 2022 11:45:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ng@0x80.stream>) id 1nP0wp-00051x-5k
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 11:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :From:Date:Subject:CC:To:Sender:Reply-To:Message-ID:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8K0kXak3H031UGiqqsDN443s4woSE7chl5548ri+YSY=; b=gFbISGhQi8eRtDQjvJljf0BGZ+
 exPbhNYkEXpA72IPIvH4v3hRw0fAAGPMRacApK43vHxbar30Rjf76TL9gQkwFXceQj27zEtU6RRmc
 73jAEU/ct5PJxtUJoRP9y7ziIKBrSUPhfTZXxeXAeJvuPq9NY63P5EFp7N6SkYh9Rx/g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:From:Date:Subject:CC:
 To:Sender:Reply-To:Message-ID:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8K0kXak3H031UGiqqsDN443s4woSE7chl5548ri+YSY=; b=D
 HmbSwxEZrOJIO2xpQgWNxX+AiKO1CPqUaltN4MR1akblo/8a54h9cSJazhOJsGMn70K4wptUAqRgb
 4n/JuHID6jD5JImZlfV3yW4sZXdvIGxvrKmcImehdQgM4mv1ND7NgAXVnnSBio/qzTh2tmfDlfva5
 F2ms5/3GmByZzZho=;
Received: from eva.beecloudy.net ([145.239.136.208] helo=penelope.mx)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nP0wm-001Crd-F5
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 11:45:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 128BD2228EB;
 Tue,  1 Mar 2022 12:45:29 +0100 (CET)
Received: from penelope.mx ([127.0.0.1])
 by localhost (penelope.mx [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lh9qM9CgC1Cf; Tue,  1 Mar 2022 12:45:28 +0100 (CET)
Received: from localhost (unknown [37.228.246.218])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by penelope.mx (Postfix) with ESMTPSA id BE2AD2231A9;
 Tue,  1 Mar 2022 12:45:27 +0100 (CET)
To: asmadeus@codewreck.org, ng@0x80.stream
Date: Tue, 1 Mar 2022 11:45:27 +0000
From: ng@0x80.stream
MIME-Version: 1.0
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Quoting asmadeus@codewreck.org: > ng@0x80.stream wrote on
 Sun, Feb 27, 2022 at 10:31:27PM +0000: >> Forgive the naive question, but
 would this change entail that a >> client may not observe its own wr [...]
 Content analysis details:   (2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 2.0 FROM_SUSPICIOUS_NTLD_FP From abused NTLD
 0.1 MISSING_MID            Missing Message-Id: header
X-Headers-End: 1nP0wm-001Crd-F5
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: ericvh@gmail.com, rminnich@gmail.com, lucho@ionkov.net,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1nP0ww-000525-Qd@sfs-ml-2.v29.lw.sourceforge.com>

Quoting asmadeus@codewreck.org:
> ng@0x80.stream wrote on Sun, Feb 27, 2022 at 10:31:27PM +0000:
>> Forgive the naive question, but would this change entail that a
>> client may not observe its own writes? (Because the client may send
>> Twrite and Tread but the Tread may be served first, I mean.) Isn't that
>> undesirable? What do other file systems do?
> 
> I this part is mostly safe as long as:
> - for cache=none, we make sure the IOs are finished before we return to
> userspace. It means that during a write the state within the written
> offset might be inconsistent, but during a write there are no guarantees
> how the file is being modified afaik?

Ah, yeah, as expected, it was a stupid question on my part. I'd
probably thought that the proposal was that write(2) return
optimistically before getting the Rwrite messages for the
corresponding Twrite messages.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
