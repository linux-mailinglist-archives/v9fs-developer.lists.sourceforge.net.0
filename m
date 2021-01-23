Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8CD30117D
	for <lists+v9fs-developer@lfdr.de>; Sat, 23 Jan 2021 01:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rhkyy0SfiTiH+SLmSqZqteKym+BSdjIT49iWrBR6rw8=; b=UGS68I2p1n8i6SMcMx6BIBtqYV
	0rj5plgUFuNXSkPhH25yEPBUHyDmlwHwDIZXF4RCod26K1UDHYOoBFqG3u+grVWoipIbRrs1eVc0V
	b2ogk6DAWi0XL0EFiPsMMvsVafoxq3QaSoM8NEiaWsGoJtKYruBM6xoJ3EnclDwDgbL8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l36ag-0003Nx-8t; Sat, 23 Jan 2021 00:15:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@aqucknews.life>) id 1l36af-0003Nq-5B
 for v9fs-developer@lists.sourceforge.net; Sat, 23 Jan 2021 00:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hcd3Mcj37xuFt6bpykaoVKLMj/k1jF3cQMBr6UdVzpo=; b=W2hu+xl46caviUvP3TPPXj5gYp
 YkAPVHTec/+Ui7bPIDcwZp09B529Dtl4kylyV+q+rA/LqE13gk3sgbHoMZtmtI4YspcXbuYBri9xs
 +Fu8GCe0bZXbiR3DAwWrB9pQXTazSk+sV3ID0OnspSSDgN271sFsMXNwEoL+qYs2AhE8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hcd3Mcj37xuFt6bpykaoVKLMj/k1jF3cQMBr6UdVzpo=; b=FYiNmK3msre2Jkhe41V/ReqyHn
 Tl6NwPtfBBD/HZvD0Rx9MnTokLlnMdUSseCskMn/ehnIyeDAScBbq79M9TEG0tnfEokaQSvgknuLU
 WUg3xg+Tc+Fgqd8AcRCMZgU86upqvA5+r9GEKVGUj4OoOC6OjiTLKbYYxT1fgokbDWCA=;
Received: from aqucknews.life ([106.75.129.228])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l36ad-00BtyK-1p
 for v9fs-developer@lists.sourceforge.net; Sat, 23 Jan 2021 00:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=aqucknews.life;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@aqucknews.life; bh=eqRtB57Z7AYWf3yX2PvA9phb5ng=;
 b=0H/crd1mrhgkJeQjcDN4td5JVFOq5zjU6YNuSlec3U/05IZ1K+gxT2bGvYStusIDH4enZapN6/nj
 k4SBTsHdMduhksFc85DpwKoAnC3+RLsHIHswRUIKKUaC1nY6gWLvnG5K0rRE/us7veQtKGX6XEGH
 i5y8xuo8haJdqNK86Nw=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=aqucknews.life; 
 b=JAVgiD8lOPLtFYhLGa23FRkoYOTim8kEFE0jax911Wew+ZBXSic7udMyPhPn021bI13mnzrGfpJ6
 F487ShSX0cTfVPW98vM0o1V4QqJ818HUW2q1Ms8c/J9peWe7rp68iiuEmzyGVm15CrkjCeKwIcCu
 wgC8536HR3Cr8atfHUc=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Sat, 23 Jan 2021 08:15:34 +0800
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
X-Headers-End: 1l36ad-00BtyK-1p
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
Message-Id: <E1l36ag-0003Nx-8t@sfs-ml-2.v29.lw.sourceforge.com>

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
