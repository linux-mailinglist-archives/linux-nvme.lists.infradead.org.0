Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5F51BD0CF
	for <lists+linux-nvme@lfdr.de>; Wed, 29 Apr 2020 02:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=GmAmVl365he2DdJ7Vqd4nSnQC
	6OcyebT0Xs9AbSLS7yueLhOv7Fb4j6N4+LR7XXqRxvo5rO09rI95QnsmZ7bzOOvfPJ2TsA4/YvtNR
	r9zeuBXgkw2ArOXiOlgX6HNUXygIGTLrnzCx05Prp6qZHCyy6XPUWrr7tCv9ST+1wr4LcLwU0XVav
	UquZoZfIvG6QK/IF9D0gsQ6yrFhilk7TnwSNY9OOcAjS+pLLVU8D8NcnTzKyadcun6WBGewuCniAl
	VtIqfco89/oUXuTRPDaMN//YGCgLYkUAyYz6GcittWZNDRxfjZX3iQ3CgdG0NlTiUXN9xkBlZRmb0
	58CoEITbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTaGM-00081B-Bq; Wed, 29 Apr 2020 00:07:42 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTaGI-00080n-59
 for linux-nvme@lists.infradead.org; Wed, 29 Apr 2020 00:07:39 +0000
Received: by mail-wr1-f67.google.com with SMTP id t14so363460wrw.12
 for <linux-nvme@lists.infradead.org>; Tue, 28 Apr 2020 17:07:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=OOdkJpBFf0EY7KfuPeP3to4LwObcjq2MxbmOvAJ+tT5r+nI+89+IfOS+4Xvc5w8KJN
 P5h249YqQOkvVF1cyIxPz2rljFVMXDLprm+5BNBX8v3a//Zxs0XN3qys6VTSbzJZsKTf
 aFV/Q6tjxAyNiHwTRPjfYGumKgiYbujaDq0D6Gr0zO7DS+IeU8HRZXLqympbnK6sdDfm
 5GyWFLfjNcVb7GowGaS3IFAfKgi0y+Oc8fYTRxqV+ysOvbu/BUZn2zU8XY/qMjwX4jEj
 Y46lHJCPqm8SKyQYqQ4MRF6zUO+bBApECgrPdEW3wQnVQro+NTjqwtSMeTWOYsa37hs6
 bLsw==
X-Gm-Message-State: AGi0PubQyNSS0JwXdkI0Elbm+CzhcfwaKyWkFJgYzYzHJJjidgGL6lfr
 qBTtliWhno5BKnHqNDb03cjcrAra
X-Google-Smtp-Source: APiQypLkmpzvuAOQfcJLtmJdGD7+zEtbh1uPnIXX0kYqBFL7eKE6igICnehJSYsjrSBKNJXlzf4G/Q==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr36300451wrm.177.1588118856661; 
 Tue, 28 Apr 2020 17:07:36 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5185:4503:ed8e:c2bb?
 ([2601:647:4802:9070:5185:4503:ed8e:c2bb])
 by smtp.gmail.com with ESMTPSA id c1sm28773725wrc.4.2020.04.28.17.07.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 17:07:36 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: remove last_sq_tail
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200427185446.2139232-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <86ed40f5-9732-6577-f407-a023f14c59d9@grimberg.me>
Date: Tue, 28 Apr 2020 17:07:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427185446.2139232-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_170738_188860_95905B39 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
