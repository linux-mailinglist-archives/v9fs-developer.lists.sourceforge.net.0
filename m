Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6492F2EF0E8
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jan 2021 11:55:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kxpQl-0004BA-Pf; Fri, 08 Jan 2021 10:55:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin@snason.buzz>) id 1kxpQh-0004Aw-WD
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 10:55:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CinD34kwn61RzFguFknEJl1Yyd/8o6h5Rv4LaY68eYA=; b=JVd7c4xI2A7/OzoyASD/qDhabh
 MakJigVtHG+NphGtDps0NCqKNJawghHYlmDrZCKqNlw/RKvajZq5ua0QQRnooCMn62FqnJhn4ZCME
 miPbfmUrgQPy6pKhgNU9z42aj2/ihxGveKjKPIokHeL5cnEdtKwb8JWPg6LTCkHWhxM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CinD34kwn61RzFguFknEJl1Yyd/8o6h5Rv4LaY68eYA=; b=C
 1zRQVsUueMKLsl7SE8/OIn0oqH67LY7s19Ric3iernwu0jqYlN0PoicpaDq3HlxgVpSD+IRv/ubp8
 8Ug1dqlzw8EXQMfSsXFWmq6ce7nCHqx2olY7wWbfAS2ScGS7X9Qoci9zM2/sB+srU7FcUD1qmbrhW
 BkctDSoS2dj2nCkI=;
Received: from hwsrv-822679.hostwindsdns.com ([23.254.244.164]
 helo=snason.buzz) by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kxpQY-009ryB-Ns
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 10:55:39 +0000
Message-ID: <20210108183033243018@snason.buzz>
From: "saison" <saison>
To: <v9fs-developer@lists.sourceforge.net>
Date: Fri, 8 Jan 2021 18:30:21 +0800
MIME-Version: 1.0
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: snason.xyz]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [23.254.244.164 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
X-Headers-End: 1kxpQY-009ryB-Ns
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?77yc6YeN6KaB77ye44CQU0FJU09O44KSIA==?=
	=?utf-8?b?5qSc6Ki844CR44GU5Yip55So56K66KqN44Gu44GK6aGY44GE?=
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

5rOo5oSP44GX44Gm44GP44Gg44GV44GEDQoNCuOBguOBquOBn+OBruWPo+W6p+OBq+OBr+eVsOmD
t+eZu+mMsuOChOaDheWgseOBjOWkieabtOOBleOCjOOBpuOBhOOCi+OBqOihqOekuuOBleOCjOOB
vuOBmeOAgg0KDQrjgYLjgarjgZ/jga7jgqLjgqvjgqbjg7Pjg4jjga7mg4XloLHjgYzlpInmm7Tj
gZXjgozjgb7jgZfjgZ/jga7jgafjgIFTQUlTT07jgqIg44Kr44Km44Oz44OI44Gu5oOF5aCx44KS
5pu05paw44Gn44GN44G+44Gb44KT44CCDQoNCuePvuWcqOOAgeanmOOAheOBqueQhueUseOBp+OA
geOBguOBquOBn+OBruWPo+W6p+aDheWgseOBqOOCq+ODvOODieaDheWgseOCkuabtOaWsOOBp+OB
jeOBvuOBm+OCk+OAgg0KDQrjgqLjgqvjgqbjg7Pjg4jmg4XloLHjga/nlbDluLjnmbvpjLLjgb7j
gZ/jga/oq4vmsYLmm7jjga7kvY/miYDjgpLlpInmm7TjgZfjgb7jgZnjgIINCg0K44Ot5bqn44Gu
5a6J5YWo44KS56K65L+d44GZ44KL44Gf44KB44Gr44Gv44CB44OW44Op44K344GqIOOBqeOBruOD
quOCueOCr+OCkumYsuatouOBmeOCi+OBn+OCgeOBq+OAgVNBSVNPTuOCkiDmpJzoqLzjgZnjgovl
v4XopoHjgYzjgYLjgooNCg0K44G+44GZ44CCDQrjgqLjgqvjgqbjg7Pjg4jmg4XloLHjgILkuIvj
gavjgYLjgarjgZ/jga7jg63luqfjgavnmbvpjLLjgZfjgabmg4XloLHjgpLmm7TmlrDjgZfjgb7j
gZnjgIIyNOaZgumWk+S7peWGheOBq+OBguOBquOBn+OBruaknOiovOaDheWgseOCkuWPl+OBkeWP
luOBo+OBpuOBhOOBvuOBm+OCk+OAgueUs+OBl+ios+OBlOOBluOBhOOBvuOBm+OCk+OAguOBguOB
quOBn+OBruWuieWFqOOBruOBn+OCgeOBq+OAgg0KDQrjgYLjgarjgZ/jga7jg63luqfjga7kvb/n
lKjjgpLliLbpmZDjgZfjgb7jgZnjgIINCg0K44GU5Y2U5Yqb44GC44KK44GM44Go44GG44GU44GW
44GE44G+44GZDQoNClNBSVNPTiBDQVJEDQoNCuODreOCsuOCpOODswpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
