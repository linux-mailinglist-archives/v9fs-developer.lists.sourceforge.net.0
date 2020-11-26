Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA752C4E0C
	for <lists+v9fs-developer@lfdr.de>; Thu, 26 Nov 2020 05:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iCl+8ufk+0hA7p8jPmh3RbHNfDVrnHtFYp5jOXtTe40=; b=mKfiNwruwoOPPRho+a237Yg4iV
	buuRQ6/rRS2koqgM77cuYnu61mVfoGflQH+UHQOLtJ1xRMQFA1NdCYSpUGoFgDTfSk4I5T6+aUcFI
	jAw7Pado5ESTD7lPKBBqFUq5+4QoX+wNx3bhCTNlXIPrV3B9+5GU7oCatNTTcJ2jQKyc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ki93T-0008SP-70; Thu, 26 Nov 2020 04:38:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@getmailgoesbulk.life>) id 1ki93R-0008SI-KI
 for v9fs-developer@lists.sourceforge.net; Thu, 26 Nov 2020 04:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ogooD6J18spkrwYlsVcLBz0qISNAConOQYOtzkd21Y=; b=lqPcBYs0wZhyWwRoSTpbxBvrvr
 OsIf1pHg/gydD4tLslyjFMgCKim6mrqHDN/xK22sPPmxnT532A3QqCA4bc2SJ/uamO9ABaEbS4CYY
 RFdh8N6d9HQDKdzYBPsE0mzJ9zvR/wyDeZxkS/AkiXx1wM8ZREIyqU8pOcguqGObL4c8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ogooD6J18spkrwYlsVcLBz0qISNAConOQYOtzkd21Y=; b=hrfMYYNVoZyUhhWuuxxo3wdlC4
 qHoGrBS1QyzFEK5+8RwV7KlsFMs1m+5Eh0G4Pxa0xmvTKNspTQGLTvm59gdWVHhp8wo8WaLyAGFNO
 yRaU7GUt+ITzary876zhHrb+lHcP7ehi1XVSQgvcCe9PQeeT+gvsv74om0TV14JVyTHo=;
Received: from getmailgoesbulk.life ([106.75.129.202])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ki93M-0059n2-44
 for v9fs-developer@lists.sourceforge.net; Thu, 26 Nov 2020 04:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=getmailgoesbulk.life; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@getmailgoesbulk.life; bh=NVQQjQ/r7MlCYpm18XasehD7GPU=;
 b=Jp5kEmPrDnjHRLCbGKibLAIma9Vkh/TYSItiZACBZFB+Kg/sRdO2GayDtZWkewboVkLnYcHzihFv
 DTlk0tpGGOO2rIxMv1sbc4+gpjP0ENiLWnmT0b2Q0IWDhAGvUUBiZxEC/zfwDyMxbaCJ7sKqraWr
 oyFg6zRqJdR8sJHBnRs=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=getmailgoesbulk.life; 
 b=rq5lxZv+18P0LmcGqx/afr+inkjHSwDQj4fx0lkm00P5c8l/+GNosYmyZ5oyNMS0/ILeNwmcIBkc
 qtwvAq/Kyo0zD94gHvrVs4YuV4j1UttZ+a4pEN6Dh7d2ArIQZekWyX/NjPmQdDKl0j19R8RWvTJP
 ihu8V78Lr5N+dX6acHo=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 26 Nov 2020 12:38:27 +0800
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (charleswjacksonjr662[at]outlook.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 MONEY_FREEMAIL_REPTO   Lots of money from someone using free email?
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1ki93M-0059n2-44
Subject: [V9fs-developer] Mr.Charles
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
Reply-To: charleswjacksonjr662@outlook.com
Cc: sales@getmailgoesbulk.life
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1ki93T-0008SP-70@sfs-ml-4.v29.lw.sourceforge.com>

Mein Name ist Charles W. Jackson Jr. Ich gewann eine Spende von 343 Milioni=
s US-Dollar Gewinner Jackpot. Ich leide derzeit an Hirntumor und wei=DF nic=
ht, ob ich ihn =FCberlebe. Aus diesem Grund habe ich beschlossen, 1.500.000=
Millionen Euro zu spenden, jede 6 Menschen auf der ganzen Welt f=FCr Sie un=
d die Armen in Ihrer Gemeinschaft und Sie sind einer der gl=FCcklichen Mens=
chen Bitte mailen Sie mir: f=FCr weitere Informationen, um meine Spende auf=
richtig zu erhalten, =



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
