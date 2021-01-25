Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBCE3026C2
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jan 2021 16:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rhkyy0SfiTiH+SLmSqZqteKym+BSdjIT49iWrBR6rw8=; b=V332RpFLDfGyouEccaMsNs1tya
	mfYm0Fado7d/Fy4aWExwPQdhtwh4rTJPXf4HhejANewIhS9i+AgMFH8icRnLTIUkQQHXlTNhWVY0B
	FngMYEdrcve9i/aMbmrDhg4sEZBpjkJ9kPM6QBCkAia3yfb5MR1d54NH3fgkdgk2qKEs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l43c2-0007LE-Gc; Mon, 25 Jan 2021 15:17:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@aqucknews.life>) id 1l43c1-0007L6-Bi
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 15:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hcd3Mcj37xuFt6bpykaoVKLMj/k1jF3cQMBr6UdVzpo=; b=U/DNM4GPHmmjmD8n3V1Px/LcIC
 +2jyat3/CaCBUlQocNihGDX2YRUJ/HpgBHDcEl9XeuUIa97NdlEZ7KcmAXhOGBGKWcg8zKK4vVuGf
 sBigLvQwdNR1KThDCPwXacZlvWYLg+oEWa446FlxmT2CV2H/uALJ2AYTcYT+FfR8aPg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hcd3Mcj37xuFt6bpykaoVKLMj/k1jF3cQMBr6UdVzpo=; b=c2BwwHk9JYKnXEq51krv5aSfa2
 rPWYumWligOTY2613mKKm7j8rU4MRCdpKBAokMPSpowbuOcfDWVFQEUzBQgURfyJht6N0e7hqTYQz
 xio/CGnfPxTasogCEGge9/JmjyfblAW0et+i+QJZ7QgaxXYtWnPbn/jWXiUS+jIjueRI=;
Received: from aqucknews.life ([106.75.129.228])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l43bw-002vj5-4T
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jan 2021 15:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=aqucknews.life;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@aqucknews.life; bh=eqRtB57Z7AYWf3yX2PvA9phb5ng=;
 b=CXQ6dEWKg6N4mC2WwfZgC1DePVYxvZYtVD3pIduHknLp1GZzfLH4nP6kFmodgDzwTh0NExVA5rrT
 XI3oFgVaeJX7EKIf+WET9kThRsyPnHUDOt66QT9pxZE5nAnxbixHXNhJ0llhwqL1JGA/Q49ypk/A
 TaYeG4qFWgWSPq234Oo=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=aqucknews.life; 
 b=ttHHxiDEpfREoxTt4R0EPOE+2Fms/BCz/AB81uB9v0Thg/It+uyu9ZYhOKff8A+PiWCKmeygxoyh
 41wDw8d2G2J/8A+wpG/7l9+fNeHPThGu7EWFSPTsOyO8mK59zBGVA8beyGpo2qBAMEZEwq/Vnu13
 pWtfZF1y+3/ddID9o4M=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Mon, 25 Jan 2021 23:16:47 +0800
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [106.75.129.228 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (jacksonjrc75[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1l43bw-002vj5-4T
Subject: [V9fs-developer] my subject
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
From: sales--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: jacksonjrc75@gmail.com
Cc: sales@aqucknews.life
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1l43c2-0007LE-Gc@sfs-ml-4.v29.lw.sourceforge.com>

Hallo!

Ist diese E-Mail-Adresse aktiv? Ich habe Ihnen fr=FCher eine Nachricht
bez=FCglich Ihrer Spende gesendet. Haben Sie diese erhalten? Bitte best=E4t=
igen
Sie und kontaktieren Sie uns erneut

Freundliche Gr=FC=DFe
Jackson JR


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
