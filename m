Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8371EE8DCF
	for <lists+linux-nvme@lfdr.de>; Tue, 29 Oct 2019 18:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=Rhx+eQvn8YS5W8yMhd+5qoowm
	zA6CYfZ25gbGVHRBJIm2Z6VZCEdgkBArCuDCG0qG6rei3Bs968SHCSvUHP2VmZGkpfzddKmoa7ay4
	lqdXr0S4id1Psa0cOAnUNHNvqACWtSKG9gI5OMJV+TsC1USso/UCxZyRgG/BaAz89AOdQtwjku4x/
	Aw8Tt6qe7MaqFVvAfKpM2K+RrowV47lRYb+h8HMTec9uuqi9ykKjioqO4PqG6aue/jxvF/TsTKkmL
	m9eBRo247q443iMJyg0H0M7kH+Z5+FTyAjiEUu7aQeVw77AV4qRUETzqUJBEaOEK2Y9XdecJQD+tk
	msULMkYbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPV4P-0006xF-GG; Tue, 29 Oct 2019 17:14:13 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPV4K-0006wV-0N
 for linux-nvme@lists.infradead.org; Tue, 29 Oct 2019 17:14:09 +0000
Received: by mail-wr1-f66.google.com with SMTP id o28so14524139wro.7
 for <linux-nvme@lists.infradead.org>; Tue, 29 Oct 2019 10:14:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=UKLiJlONnvZ/q60FPFy6FJsjpaoySfov5BZT62uXl989O+SqDU7fBdELbySmSS4NAz
 3wFwaTXBZDpFekimSsxeZ7EU0nKIVH9ATHbjEYClujM9DXfYlXZMsZBSzOotWhl4Da8B
 lfGXWqM4iVfDXagArfHxhtyrhO0Qm9PmsJx/XuSqkHO59T8bDmdrAjprtvB0lMM/CxiV
 vTetLMHPM90oKPUHMj2jagp5LQMWdmcXOLDxC2+q/iD/RfYG/xcs+OvRbn+weEa7/Sdj
 2R7ffZwMNuKaH+v1VC0JEINuqCYB+7iYU23iaDCOPYVN3Hl+p4kj4F8xmT22rKaSYHU1
 5Ozg==
X-Gm-Message-State: APjAAAWH+52TLBmzF/OK58D14On42T3NQcUvjDXLve+tTSAHtuZIp3ob
 V8Pz8KBsDVhPklU3Z7dxqk4=
X-Google-Smtp-Source: APXvYqwE7VI35Ddqh1hPLABwbMiqYwFjh3mu47PyRGAQUyHfUHRR1ak+wXAj/b2BsV5Xg0V0p2Oa8Q==
X-Received: by 2002:adf:b6a6:: with SMTP id j38mr20322111wre.275.1572369245776; 
 Tue, 29 Oct 2019 10:14:05 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 189sm3251636wmc.7.2019.10.29.10.14.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 10:14:05 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: fix a segmentation fault during module
 unload
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <20191029144227.108450-1-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <badcd22c-54ef-a4ab-2080-55f697b184e8@grimberg.me>
Date: Tue, 29 Oct 2019 10:14:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029144227.108450-1-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_101408_050076_B0B6B4C6 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
