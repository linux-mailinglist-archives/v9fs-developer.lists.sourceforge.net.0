Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0521E2AE73B
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Nov 2020 04:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/oDOJFNw3Du7RlwDUIQFyw2RjBepB9++spxkWVb7ilk=; b=k2hJVorYjdCSZaOKFbEEUO/o1t
	Hrr01Z1+U0QAZ773BD35aEg5hi29bWJKomcgwEEVXI9oTvQCaEVAg8R478DLysgKANDiRLaAQG+Nm
	I/WIUQxSgU8P4sIuyFcqQXZDh6DlGfZUrNlqjgUCoLXtc+Q22jPnROvlZE0skpyu3UIk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kch9z-0006NG-QC; Wed, 11 Nov 2020 03:51:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <caroline.revin@prestationrecrutement.xyz>)
 id 1kch9x-0006N3-QN
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 03:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lBpbRwFR2Hz3vJA4tUZIO+PhafzKMZFlEN87rj9PAEM=; b=jR4ryH3J8geO83nOgEXkMBwdwc
 rsYzwcDflOtGEgqXomxx6y0YZN6o7qEm8hsIuEnQfSQfyEw02lcFoM+t0ZO5ffaR84PkQVy/33lgb
 BcLsVfqGT1LmCLKHwcC8BCss6pzHWSlPfm5rR2ywZsnL7iclwsF6Xouo9vsNFsNBv4K0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lBpbRwFR2Hz3vJA4tUZIO+PhafzKMZFlEN87rj9PAEM=; b=n
 JPtiuL8xAXaDJqfMpLGsVOakXjZb/ZIO6SqYQW1dxfhivpo2NEgqKXRS6zKrBwTI94nSULpBSpT0q
 P4IOoKuATfAO5isfS7ydfzYbsg/VlMEZ4W/24QTUpZJ6V5J0J7DpwbKHJJv1eN0P4UnPssZCLtGfK
 7wKsUvZvPifa2J8U=;
Received: from mail.prestationrecrutement.xyz ([81.4.100.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kch9p-007SdC-Eu
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 03:51:01 +0000
DKIM-Signature: v=1; c=relaxed/relaxed;
 h=from:to:subject:date:message-id:mime-version:content-type; 
 d=prestationrecrutement.xyz; s=dkim; a=rsa-sha256;
 bh=lBpbRwFR2Hz3vJA4tUZIO+PhafzKMZFlEN87rj9PAEM=;
 b=dWvyw7GLXW8s/1uYVSVBg0c5zHudbQyDwVMEDsiZUxDKwoLRaKST3C6TpnUi4v41r
 7ChYEEo6Bex0fS2DUCbgkNbCqwe/amWnzxzSSsw/4kM/j4o2I876+DuKh5e/y3Fm63v
 Pu1PkhGvTJpadsmEmsY1r1qjAGhsdebUG8HSA8E=;
Received: from WIN10LU0EGMUP1 ([::1]) by prestationrecrutement.xyz with
 MailEnable ESMTPA; Sat, 31 Oct 2020 16:45:20 -0700
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 31 Oct 2020 16:45:12 -0700
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAACEySI5BRG5OtJi0gQVcWuTCgAAAEAAAAGvGJLss3blGpEUS7ZobGhcBAAAAAA==@prestationrecrutement.xyz>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: Adav39Xf/r48J08lR8iXAznYqhnoNQ==
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [81.4.100.193 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: prestation-recrutement.com]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1kch9p-007SdC-Eu
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Pour vos recrutements ou prestations informatiques
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
From: Caroline Revin via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Caroline Revin <caroline.revin@prestationrecrutement.xyz>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Bonjour, =

Au sein de votre entreprise, vous pouvez rencontrer des n=E9cessit=E9s
d'accroitre votre =E9quipe et par cons=E9quent devoir recruter des
collaborateurs informatiques. Notre soci=E9t=E9 est pr=E9sente sur le secte=
ur du
recrutement de talent dans le secteur IT et nous pouvons mettre =E0 profit =
nos
comp=E9tences de recherche et ce en toute discr=E9tion.

Les tarifs que nous proposons sont de type au succ=E8s. =

Nous pouvons vous proposer des prestations informatiques du type r=E9gie sur
un ensemble vari=E9 de technologies : ERP, d=E9veloppement, syst=E8me,... =


Je me tiens =E0 votre enti=E8re disposition, =

Cordialement, =

Caroline Revin =

IT Resourcer =

Prestation Recrutement =

caroline.revin@prestation-recrutement.com =

List-unsubscribe:<mailto:Unsubscribe@azda.xyz?subject=3Dunsubscribe>,<www.a=
zda
.xyz/unsubscribe.html> =



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
