Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE73596DD1
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Aug 2019 01:33:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i0Dd2-0004Ox-4f; Tue, 20 Aug 2019 23:33:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mioconnor1@hotmail.com>) id 1i0Dd0-0004Oo-TK
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Aug 2019 23:33:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/gwWlnXwKFyiLjtl06Yl7rh75ehLqLBPLHgvzcCOb58=; b=fKt4g5TGvvViue627iXkMGx0TB
 gMwDsQ+a/wzqHm+S03zmGuGYsZ1msj56N1ElcBVb0repNwMiiXR8dYlDwb+881WeAWNVay2tbL9I+
 k/Z7T8TSVraLOSh5cZHsJRnXm8KYQbST3UaPnfdZMcWlDe9/sad3tRWxIsOI53QHjUu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/gwWlnXwKFyiLjtl06Yl7rh75ehLqLBPLHgvzcCOb58=; b=a
 e3MLsV4JzQ+ZKnfbQQl0K4d2kP1yWXW5L22IWaUzsdwo7jZnCzw8Lc3tdaznfMF1iJ1KXw/0MgamL
 62CjJ9Zv8z7QQWRDej46dnO2u65FyeBxTu7B4Ee/OfWvcUNVR2Dg5WxAwK75ekzPN/5W24o7bBsnc
 KXEgbwOUICueJP28=;
Received: from mail.abanti.net ([203.76.110.138])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i0Dcz-00DqPD-Go
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Aug 2019 23:33:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.abanti.net (Postfix) with ESMTP id 4818D94DDD2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Aug 2019 05:08:29 +0600 (+06)
Received: from mail.abanti.net ([127.0.0.1])
 by localhost (mail.abanti.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id zdwMM9loN-0u; Wed, 21 Aug 2019 05:08:29 +0600 (+06)
Received: from localhost (localhost [127.0.0.1])
 by mail.abanti.net (Postfix) with ESMTP id 9493E94F8C8;
 Wed, 21 Aug 2019 04:53:40 +0600 (+06)
X-Virus-Scanned: amavisd-new at abanti.net
Received: from mail.abanti.net ([127.0.0.1])
 by localhost (mail.abanti.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id E1J62E----hT; Wed, 21 Aug 2019 04:53:40 +0600 (+06)
Received: from joneshou (61-221-103-85.HINET-IP.hinet.net [61.221.103.85])
 by mail.abanti.net (Postfix) with ESMTPA id 5DD1F9428C7
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Aug 2019 04:25:56 +0600 (+06)
From: "Marilyn Oconnor" <mioconnor1@hotmail.com>
To: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Date: Wed, 21 Aug 2019 06:25:34 +0800
Message-Id: <20190820222556.5DD1F9428C7@mail.abanti.net>
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mioconnor1[at]hotmail.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (mioconnor51[at]gmail.com)
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no 'Received:'
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (mioconnor1[at]hotmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 2.5 SPOOFED_FREEM_REPTO    Forged freemail sender with freemail reply-to
X-Headers-End: 1i0Dcz-00DqPD-Go
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] I WILL APPRECIATE YOUR QUICK REPLY.
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
Reply-To: mioconnor51@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

 - This mail is in HTML. Some elements may be ommited in plain text. -

Good day to you,

I am Mrs. Marilyn Oconnor. I have suffered maltreatment and hardship in the hands of my late husband's relatives since the death of my husband with my son in a car crash. By tradition, all that my late husband had, [wealth] belongs to his brothers/family. I am to be remarried by his immediate younger brother which I vehemently refused. They have ceased all that I laboured with my husband to acquire including treasures, houses and his bank documents.
I have suffered cancer of the oesophagus for almost 7 years, my health is very bad and the doctor said i dont have much time to live. My late husband deposited some money with a security company. It has therefore become very necessary and urgent to contact someone, a foreigner like you to help me receive/secure these deposit. Let me know if you can handle this by responding to this email.
Stay blessed.
Marilyn Oconnor

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
