Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361BACDC8E
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 09:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvHJy+XT9ckfBnjgJ9PMyeTEb5TRpb01cMKvr13DwxQ=; b=Pb8NaHzX3IpZRP
	qr7hYaaA/uLlzUcyeeCg9xsH3dX6lwulS9/9dSuihsD59biD3Pd6XOgZGYDnkPEIIUDVspSZbpi/L
	7RrJU30e4AFowl5wM4NbPkOrx+nfI3FfCVTAjg4bBLw9kGLJRD5Xw4+dV7fGXupbnPrIS3B5ssttV
	2VF3iHPnJqBuhdRFjesWIsbgkjXSL5GsPvC65lQM29Z32Tol+vz7cr3xdNPpSgJbrnPUqh84ODdFH
	DlFqs4F8bRvocYVLn5OFhJrJJXRXCWI+dd7tmkvByUjfnFJlRJIHdQoNJPXvIJqWQ1QSq4ka6jNhm
	W7VQAPGUso7AOStD+RAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNhu-0008Vf-4K; Mon, 07 Oct 2019 07:45:26 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNhl-0008I5-1i
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 07:45:18 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 36ED341207;
 Mon,  7 Oct 2019 07:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 mime-version:content-transfer-encoding:content-id:content-type
 :content-type:content-language:accept-language:in-reply-to
 :references:message-id:date:date:subject:subject:from:from
 :received:received:received:received; s=mta-01; t=1570434314; x=
 1572248715; bh=jLN83xO37OInKn0O0TuZ8M9JH4HGvt1kzqGuzaILytQ=; b=g
 eZ53Rj2EC+m2GoRERDOKrph4Gb3Lq12X6JAw2MarexXwao6a8DvU20GLkuX+C7rq
 V9gSAon3uNTU93ArLbAtnxbinOeGSyWsAksR1l8djyHpANDGB0/gI+Hy4CcVW4cM
 akDf4itGLhyp6DXWYMuA7QeJWAPe1xlHiLu5SREjXg=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eclh4WAx8WC2; Mon,  7 Oct 2019 10:45:14 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 07F8441203;
 Mon,  7 Oct 2019 10:45:14 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (172.17.10.102) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Mon, 7 Oct 2019 10:45:13 +0300
Received: from T-EXCH-02.corp.yadro.com ([fe80::19dd:9b61:5447:ff23]) by
 T-EXCH-02.corp.yadro.com ([fe80::19dd:9b61:5447:ff23%14]) with mapi id
 15.01.0669.032; Mon, 7 Oct 2019 10:45:13 +0300
From: Mikhail Malygin <m.malygin@yadro.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v2] nvmet: add revalidate ns sysfs attribute to handle
 device resize
Thread-Topic: [PATCH v2] nvmet: add revalidate ns sysfs attribute to handle
 device resize
Thread-Index: AQHVd6AJCekf5mvAfEK6Mx5ufLPLaqdK/yAAgAI8YICAAWlDgA==
Date: Mon, 7 Oct 2019 07:45:13 +0000
Message-ID: <5DA98541-6318-4BB5-9CA5-CE0E013FBA0C@yadro.com>
References: <20190926231940.7494-1-m.malygin@yadro.com>
 <20190930150202.9259-1-m.malygin@yadro.com>
 <11e37d39-c85e-f844-953f-f540596b4410@grimberg.me>
 <20191006101213.GA30175@infradead.org>
In-Reply-To: <20191006101213.GA30175@infradead.org>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [10.100.1.26]
Content-ID: <769A43189D6881448DE76EFEE52160BD@yadro.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_004517_369462_0DA866F3 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Just posted updated version with code style cleanup.

> On 6 Oct 2019, at 13:12, Christoph Hellwig <hch@infradead.org> wrote:
> 
> On Fri, Oct 04, 2019 at 05:03:36PM -0700, Sagi Grimberg wrote:
>> This looks fine to me,
>> 
>> Christoph, you happy with this version?
>> 
> 
> Conceptually yes, but it really needs to at least follow the kernel
> style.  I'm also not sure I'm happy about all the extra indirections,
> but I can be talked into it.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
