Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9211F99F24
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 20:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3o/HWJb9zjeWHAaxyCMNVSOAA8Vj6rP6FeLbruXnR98=; b=AK2lbT+vKp6bC/FsjIdJvRdkJ
	XCCrEPgJaXHenmzca/LuT6LZUMH6uPVDEXyML60SmAm2pr0naXA6ZDBt6/fkTbdZKhXtKwXMN858J
	mz9Mzbx1hiNNqvE8HbacRLpULVNCc9tvh+La7e1yI6aU6VXUSFw7Ybo/lTW4lerX8SeuaKkKAIxnW
	8xTaI8OtLMCXNdnHAOpk7FoLV1m3//h97i2pzG+jLtPP0W41t1ancYwwT3irxZuHVBgk8X5iA/sw3
	A9fSdB/NCWC1nixfoTGrRQO3clc3NlHAgzkKzKN/aHq6tNnhTFlncHfZU0hrjbWuDu0g+ak8az8sg
	w1DWbnzxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0s99-0002HR-PX; Thu, 22 Aug 2019 18:49:19 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0s93-0002H8-HN
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 18:49:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id q8so4872951oij.5
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 11:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xuWa201X8/NYvwUEXfXhriuoO9pjS47qjDaBxXcLfD8=;
 b=X3nA1zSRsfUyx2nA3AazS9TJlSQ5Bu9IEfS7vOfw0k/131VrtKH+evM1K442A3kLrg
 L+hjThZwsve/PvpyC+Y5afgAcuGzwTy46AWrRNNvC6rQPlGckrLGBUcCZ5ZtxitNlOrR
 AS06dDX/lOb+Wtkc0H9bsioZjCDQV+0E8NR8jAXfeBLGX6hnQVesNx+/VVfALJredGOU
 8XKIEuRnZJiLJ85mFKj/pWUnQIniJx5f+fPreBASE1BcMrB7LqirZbTWbLkZP1xTTXS4
 oN4Q+JVmhLY4g1OQhRqyPezae+GXU1DVJBvnOb4IlHJMAIITFQQraolINsCZ6YoNZpyq
 Rrrg==
X-Gm-Message-State: APjAAAWj+KT3JEBA4S1o//grKF1uuXzkmSkNCqpJ3jCjQ6iAuHZetV/t
 VpeVdZQNOlwiAtsB6pbuVgHCKmPO
X-Google-Smtp-Source: APXvYqxLsjGQ57SoCzWk9AWpEaEMjx0EIq64xZ17NHqTo4d5+xNoDFa717MMkWCmfutwjFDbIiF9hA==
X-Received: by 2002:aca:4a53:: with SMTP id x80mr418725oia.115.1566499752469; 
 Thu, 22 Aug 2019 11:49:12 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m26sm86956oie.58.2019.08.22.11.49.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 11:49:11 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
To: Christoph Hellwig <hch@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me> <20190822002328.GP9511@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
Date: Thu, 22 Aug 2019 11:49:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822002328.GP9511@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_114913_578572_66EDD86A 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +static void nvme_disc_aen_uevent(struct nvme_ctrl *ctrl)
>> +{
>> +	struct nvmf_ctrl_options *opts = ctrl->opts;
>> +	char *envp[16];
>> +	int i, envloc = 0;
>> +
>> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_EVENT=discovery");
>> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_CTRL_NAME=%s",
>> +			dev_name(ctrl->device));
>> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRTYPE=%s", opts->transport);
> 
> This adds a > 80 character line.
> 
>> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRADDR=%s", opts->traddr);
>> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRSVCID=%s",
>> +			opts->trsvcid ?: "none");
>> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_HOST_TRADDR=%s",
>> +			opts->host_traddr ?: "none");
>> +	envp[envloc] = NULL;
>> +
>> +	for (i = 0; i < envloc; i++)
>> +		dev_dbg(ctrl->device, "%s\n", envp[i]);
> 
> Why are we not having a generic AEN uevent for those that we want to
> pass on?  Also most of the information is redundant as it can be
> easily derived from the controllers sysfs directory.

You are correct that this information can be derived from sysfs, but the
main reason why we add these here, is because in udev rule we can't
just go ahead and start looking these up and parsing these..

We could send the discovery aen with NVME_CTRL_NAME and have
then have systemd run something like:

nvme connect-all -d nvme0 --sysfs

and have nvme-cli retrieve all this stuff from sysfs?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
