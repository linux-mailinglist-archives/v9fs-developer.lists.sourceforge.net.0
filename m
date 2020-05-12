Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFE51CF34E
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 May 2020 13:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xSTq847vlCwGgqEzZzS/PThpyxacBvqHtq/wJ0SimS4=; b=ASzJHt2YUiwP2zUJWZCokX221h
	Ndu3c29Un06Qw7Z5IL329dHed1MIEYm4HLlRrRyKe2q+OcSa9MHRAdMDGiJnqsuTz+LeaIk84feCl
	qkbKNb6yVQDE9y9hpQ9N+MxJTlVKfzgOhwq7ceb7aP9vxjHrOpqqEjsmcNetQtnNzOhQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jYT6A-0007KU-QB; Tue, 12 May 2020 11:29:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zentara@zentara.net>) id 1jYT69-0007KM-NG
 for v9fs-developer@lists.sourceforge.net; Tue, 12 May 2020 11:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2dApjITLBq1MdASPFZ3qktW6ixbT+zoa/cpdBluGrhk=; b=I3LSTCZlhA6FHbFosNBtH4UOua
 He+bBbD8Ib9Bwi8dHjJIdOui33rqQiyuhvyr+hAErtocg8HL1zXAt86EEM/MkTqMLRiZazSS2+AK0
 lAmx4WjzD4UfTUoWsHrJ/OdyQn2GDvcVzAXlT8yvyWsIF5F29S4KtmcbXsqsc0J4/yOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2dApjITLBq1MdASPFZ3qktW6ixbT+zoa/cpdBluGrhk=; b=K
 imVubguvW5HBGtDQYLha9rN9aPa+3L0Yh+R/czkWzwEAZE6O0Ffro5yajmqyHizKVkfJGBa9X4Rq5
 BbGT1u2ERHEhrqOiL5WABsQs5lCHqwTYYB94lLDisKQ8Se+BO5tLFhh/U0epoMXhmXVg1iW4Q/Adl
 b0E8Dw9RMe0/HWK4=;
Received: from www.caban.de ([217.86.214.57] helo=skul.lan)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYT67-00B0fv-PT
 for v9fs-developer@lists.sourceforge.net; Tue, 12 May 2020 11:29:21 +0000
Received: from WIN-J7GFDBAO51J (unknown [142.147.97.181])
 (Authenticated sender: dummy)
 by skul.lan (Postfix) with ESMTPSA id 346061757FF
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 May 2020 13:09:50 +0200 (CEST)
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 12 May 2020 04:09:50 -0700
Message-Id: <12492020050904547D302E9F$81297A739C@zentara.net>
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=zentara%40zentara.net; ip=217.86.214.57;
 r=util-malware-3.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYT67-00B0fv-PT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 5/12/2020 Hello
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
From: Carl Johanson via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: president.ceo@amtaibio.com
Cc: Carl Johanson <zentara@zentara.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Hello v9fs-developer,

Do you have a moment to correspond with me via email. My boss
have an obligation he would like you to complete ASAP.

Email him back at ( 

presidentmdceo@aol.com mailto:presidentmdceo@aol.com

)

Regards,

Carl Johanson
Biotech 
Executive Assistant

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
