Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF11CED13
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 21:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4kmsS0XpAKZql2XxhxMrqz1JDXZz2LR0rzlUdzCM8s=; b=Ykz7fsk8pXIAGi
	GfzgYnpzLJ9sWx6vavHReH4g0toZ47C7cLWvRmoJ++DeK0c+RHtMaskHFFNM+zdYf7zno4mZoLTJC
	QZwPK+AASpb4MRFVq4dmLl3M/a1CoqbwkZgGOaRtVyxFwLOWDajNzNLnJ2Sdvcn8qikakSGOjTpnW
	dJf8ePYA+ChYTq5Kr8ecp4dk83UVCnnrdGKUADZCNAiY73A7LkC4QtEx94lBBS0Bzfzo6Vxd6yH6h
	i5BWUwR0Fm2+fb3dpP9/9jDb449kKUP4DzBOVN8IjwYtXJGtdHpXrY8QMMrXFh953rlOy58NFeDMB
	fZwLwDD1W4e4lj0YWhzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZ9Q-00025F-Qs; Mon, 07 Oct 2019 19:58:36 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZ9M-00024w-26
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 19:58:33 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id A1FE043B4E;
 Mon,  7 Oct 2019 19:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 mime-version:content-transfer-encoding:content-id:content-type
 :content-type:content-language:accept-language:in-reply-to
 :references:message-id:date:date:subject:subject:from:from
 :received:received:received:received; s=mta-01; t=1570478309; x=
 1572292710; bh=3YUh1S13U+hlpQLJHx5FT8Y/dip9sXYi14zxFUWc+V0=; b=q
 b3sJMGS/EfOtrDH+uqwa+20K6XLyy2ylSGs7gn4H9pYk4es72IDdbENlqE7AUIPu
 JRs3CGZpejaKfyNumY+KzeBfvCym29EceIsc8ktMZ7beTvme59qRvJnaaORFnznR
 rL+1Y/I/GBSNSW94nmMR5JWmBTWfhE99iFxPWBzWy0=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjuW_1fUQy1R; Mon,  7 Oct 2019 22:58:29 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id AE8EE438D1;
 Mon,  7 Oct 2019 22:58:29 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (172.17.10.102) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Mon, 7 Oct 2019 22:58:29 +0300
Received: from T-EXCH-02.corp.yadro.com ([fe80::19dd:9b61:5447:ff23]) by
 T-EXCH-02.corp.yadro.com ([fe80::19dd:9b61:5447:ff23%14]) with mapi id
 15.01.0669.032; Mon, 7 Oct 2019 22:58:29 +0300
From: Mikhail Malygin <m.malygin@yadro.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3] nvmet: add revalidate ns sysfs attribute to handle
 device resize
Thread-Topic: [PATCH v3] nvmet: add revalidate ns sysfs attribute to handle
 device resize
Thread-Index: AQHVfOLZeghZeeWzs0WnD+0DnFy6z6dPNE+AgAAyzAA=
Date: Mon, 7 Oct 2019 19:58:29 +0000
Message-ID: <03F959DD-5A6A-4932-9554-564D6F20AD10@yadro.com>
References: <20190926231940.7494-1-m.malygin@yadro.com>
 <20191007073940.19022-1-m.malygin@yadro.com>
 <20191007165639.GA31190@infradead.org>
In-Reply-To: <20191007165639.GA31190@infradead.org>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [10.100.1.138]
Content-ID: <40DC076446E3494FAF159E388A2692B8@yadro.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_125832_457876_613F6383 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for the detailed feedback! Posted an updated version to the ml.

> On 7 Oct 2019, at 19:56, Christoph Hellwig <hch@infradead.org> wrote:
> 
>> +static ssize_t nvmet_ns_revalidate_store(struct config_item *item,
>> +		const char *page, size_t count)
>> +{
>> +	struct nvmet_ns *ns = to_nvmet_ns(item);
>> +	int ret = 0;
>> +
>> +	ret = nvmet_ns_revalidate(ns);
>> +
>> +	return ret ? ret : count;
> 
> Nit: no need to initialize ret, and we can use a normal if here:
> 
> 	ret = nvmet_ns_revalidate(ns);
> 	if (ret)
> 		return ret;
> 	return count;
> 
>> +int nvmet_bdev_ns_revalidate(struct nvmet_ns *ns)
>> +{
>> +	nvmet_bdev_ns_read_size(ns);
>> +	return 0;
>> +}
> 
> I think we can just remove this wrapper.
> 
>> +static int nvmet_file_ns_read_size(struct nvmet_ns *ns)
>> +{
>> +	int ret;
>> +	struct kstat stat;
>> +
>> +	ret = vfs_getattr(&ns->file->f_path,
>> +			&stat, STATX_SIZE, AT_STATX_FORCE_SYNC);
> 
> Nit: you can add more arguments to the first line:
> 
> 	ret = vfs_getattr(&ns->file->f_path, &stat, STATX_SIZE,
> 			  AT_STATX_FORCE_SYNC);
> 
>> +int nvmet_file_ns_revalidate(struct nvmet_ns *ns)
>> +{
>> +	return nvmet_file_ns_read_size(ns);
>> +}
> 
> And we can just remove this wrapper as well.
> 
> Or in fact rename the low-level functions to *_revalidate which
> might be a little more obvious.  But either way I don't think we need
> small wrappers.
> 
> Otherwise this looks good to me, thanks for doing the work!


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
