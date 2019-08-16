Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8B68FE06
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 10:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYY1fHv3Bq+gEshJTs3B+pJQCxYJmUL7vRgoL1qB7/w=; b=je5bfGqCktVSP9
	U/7NWs9vq4r+wJkVt4989g+A3latJfIiF/gSQ1vEczlf0kHVrsE2h+5OCShjgPlu1Bmv7vRDj3ITr
	yYgGgf5sIJM/nyIjJf9Dts7RWyUntR9kGmYgQVFMaaBpFME9A3TAFzG9XdQ95/8cvi73Te/7mZfGJ
	jxkld8NTuBIgoVtHj5pfnokbKFpVMbNQS7ewHyBBVQ+IOdEBo5EzooNqbXp3h0E5vf414TsKz/7yl
	n2UlcU88PB8U7R1R+FWMXDkOFmQ7nh5DlYCA4dMyd63jRiNx546uAGla2YF92L0rrtHcMdvWXSXjz
	Zf5N2Vcl9RJiOczEGa5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXkC-00084w-EQ; Fri, 16 Aug 2019 08:37:56 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXk3-00084b-MJ
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 08:37:49 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id B1B7F412D2;
 Fri, 16 Aug 2019 08:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 mime-version:content-transfer-encoding:content-id:content-type
 :content-type:content-language:accept-language:in-reply-to
 :references:message-id:date:date:subject:subject:from:from
 :received:received:received:received; s=mta-01; t=1565944658; x=
 1567759059; bh=iUMoZBRdY0le62JeKkNP+C/Ae6f2HQaNenMUUzzBFCY=; b=k
 rfM/7O0X+rlnXca1pj0Y+3Nt0Y6pBDl78BrAIwJMKfIQdj3KAzb8eyi5szpGBN6N
 qFWF0rBpLh6pIvWj4brWOENUoxZBEJ9iJzWKQqBInHEWr60nYt28iYvpN6GBADmm
 4cfcasOGbwqKc1l9ykbu4I990Wv8oobLHrbl8/5UPk=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 62wgtswypCZw; Fri, 16 Aug 2019 11:37:38 +0300 (MSK)
Received: from T-EXCH-01.corp.yadro.com (t-exch-01.corp.yadro.com
 [172.17.10.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id C3D57411F8;
 Fri, 16 Aug 2019 11:37:38 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (172.17.10.102) by
 T-EXCH-01.corp.yadro.com (172.17.10.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Fri, 16 Aug 2019 11:37:38 +0300
Received: from T-EXCH-02.corp.yadro.com ([fe80::4cd3:eaee:104f:8ccb]) by
 T-EXCH-02.corp.yadro.com ([fe80::4cd3:eaee:104f:8ccb%14]) with mapi id
 15.01.0669.032; Fri, 16 Aug 2019 11:37:37 +0300
From: Mikhail Malygin <m.malygin@yadro.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: read device size in identify-ns command handler
Thread-Topic: [PATCH] nvmet: read device size in identify-ns command handler
Thread-Index: AQHVUboDomwDLwaa4Em7jl8a7G5ma6b8QP6AgAEE+QA=
Date: Fri, 16 Aug 2019 08:37:36 +0000
Message-ID: <A6E7616B-75C7-4C02-B93B-8FF44DE86642@yadro.com>
References: <20190813093157.21755-1-m.malygin@yadro.com>
 <5fdce872-8e34-f34e-6ae8-e67bc2f935ac@grimberg.me>
In-Reply-To: <5fdce872-8e34-f34e-6ae8-e67bc2f935ac@grimberg.me>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [172.17.128.132]
Content-ID: <FDA021CC72F9E04EA6D1AA3CD27BADD5@yadro.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_013747_926928_E5C7122E 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Rescan may be triggered manually from the initiator side. It would good to have rescan tiggered automatically, 
however I did not find a way to notify nvmet about block size change. 

> On 15 Aug 2019, at 20:03, Sagi Grimberg <sagi@grimberg.me> wrote:
> 
> 
>> Currently device size is cached in ns->size field on namespace enable, so
>> any device size change after that can't bee seen by initiator.
>> This patch updates ns->size field in identify-ns command handler,
>> so initiator can see new device size after ns-rescan.
> 
> What would trigger a ns rescan?


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
