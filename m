Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43338B98A6
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 22:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q+oQPIiUs+x7u4JSkHCSbA5oM5QFzZcEBaU/7HJtnbk=; b=tLWoGuItl9GSqIzQmbScVPPG/
	ImtPEsRW4l2CbApvAm6gemYB/q04JcfBScayNNlMvJTthUmTbFA32+3PmTluP5dtP6fDkeSMbUp1Q
	b28hcGNNvuv2xcSAj3gY994MMB5uBKgErcZF5Mjq3DML9fMoghTJYeW2hTwEi8+G2KlvNwydaNV/h
	Ptt3/uBNB7mNijNfI8d8ytH5G4wXf4cGBMVGWjsq5fTIsNs//HGrD3ALrpe0ocYzwDy8jOFJ7zskf
	B2cbJdlaOjoXmjsOEGJxIi6wp6/6b1EJTsVZ/dZbDuLGkUOqwXhXmxgy0qh30RPPL/TtUM8e5iDTG
	96RTCrA8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBPr0-0008RZ-6q; Fri, 20 Sep 2019 20:50:10 +0000
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBPqu-0007YB-5f
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 20:50:05 +0000
Received: by mail-wr1-f49.google.com with SMTP id b9so8123885wrs.0
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 13:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fY9fTzwt7A+WmvqTRCuAqIL5eK0lVvWF/X2lUNH9tvI=;
 b=G/+Jw+anv4Dck4hh7h3/B7LYgF/vYSR55MP8OpMh/mmGV7xfItIVIui9ipPgBhQ4RZ
 dmnrFyTfzNaX/8h8opMnbNe0F2hlBvzr3YZZtGZHvKXtRRgYkjuDu+YQ4KDuqu0iSteY
 e+xiox6WYN2BUaISTNu2GajqNKmavVFpoc2MwS/oDm62dNgos8EQ2h3MsSs+IvPltWO9
 TJid3XXWKBHKd8guIPRjruur13BblXiAT/XJMy82uavuzCrwWEv5JYeDehf0VvT9Pbsi
 8AIXgEEBFuYApGhW/iZfxTzQ12VK8zGiFMstXxdnU3SafwcKW4k4ZmWcOGghkhoo8zVl
 vLmA==
X-Gm-Message-State: APjAAAV2WdSoSQPjH+5jIW5g7USnTeboUkeIfM6x+8z6xnfsWuSopsD8
 tyrjPOdV+Gq/riBUt34WhejF4EU7
X-Google-Smtp-Source: APXvYqz8Dp+Gd/WtzbZMiiGKhUoQ3S2+zCVxQUm1bB2HfzjAFTDmNpC53QTKC5B1pegH7qLJnS4Trw==
X-Received: by 2002:adf:e4ce:: with SMTP id v14mr13565172wrm.15.1569012601761; 
 Fri, 20 Sep 2019 13:50:01 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id y186sm6499680wmd.26.2019.09.20.13.49.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 13:50:01 -0700 (PDT)
Subject: Re: [PATCHv2 6/6] nvme: Wait for reset state when required
To: Keith Busch <kbusch@kernel.org>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-7-kbusch@kernel.org>
 <debdee44-22a1-0361-9d20-4af6a11dab0d@grimberg.me>
 <20190920182637.GD97854@C02WT3WMHTD6> <20190920192903.GE97854@C02WT3WMHTD6>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8bae471f-e7d6-89a3-81bc-498b9d42c392@grimberg.me>
Date: Fri, 20 Sep 2019 13:49:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190920192903.GE97854@C02WT3WMHTD6>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_135004_218968_169301EC 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>    static void nvme_reset_done(struct pci_dev *pdev)
>>>>    {
>>>>    	struct nvme_dev *dev = pci_get_drvdata(pdev);
>>>> -	nvme_reset_ctrl_sync(&dev->ctrl);
>>>> +
>>>> +	if (!nvme_reset_continue(&dev->ctrl))
>>>> +		flush_work(&dev->ctrl.reset_work);
>>>
>>> Is nvme_reset_continue allowed to fail here?
>>> As I see it, the flush must complete regardless doesn't it?
>>
>> I was thinking a surprise hot-removal, but no, the pci driver is holding
>> the device lock across the prepare/done sequence, so I don't think it's
>> possible for this reset_continue() to fail to schedule.
> 
> Oh wait, there actually is a way, and I even accounted for it in this
> patch, but just forgot about it. If we start an FLR while the controller
> is CONNECTING, and if that CONNECTING fails, we'll transition to DELETING.
> So yeah, reset_continue could fail.

And nvme_remove() will flush the reset_work?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
