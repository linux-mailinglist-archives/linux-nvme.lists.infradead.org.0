Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276A12A167
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 00:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MFFK1li1zhPyf8wFdphjrwCBqv7YGEmz65OhWeCgdgs=; b=f9ezkDwlMRkUjcpoWUq2dxEDJ
	HdK7UWU8MIRLsfUZ7r5dQU+pW48rTwfmf2ID120RMO2UfmE3S5qlDEmnQPhrzoHJDBm6efAG6o15B
	uMRgeUmOeCo92ZWKNE67eOz1vQ+r64FhoezPpaltK7fK3kh1u3YW6c34a6WAz8NVcplSI6Ns2/QJF
	Qz5LKAI09ITPsS/VqnnJpSAgegPMN5XGL16AQiQLtwXESQ7G7sap6D1F1AcXtGVPkh0BdxyEzq0kU
	/2+uHw9pRb4ILcJy5DBaAhWiOb9eJQnmFbFoTxRtnqHayHb8Gdtmqv0aH9KgeVXt28rZKav2QrKcj
	zhpmnUj8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUJ4i-0001yd-EI; Fri, 24 May 2019 22:54:08 +0000
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUJ4d-0001yF-Qo
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 22:54:05 +0000
Received: by mail-pl1-f177.google.com with SMTP id a5so4699004pls.12
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 15:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H94tIuheWLN5a1NQkBA+EFyXYeDiJQFuCKuSC3zhN9Q=;
 b=VcDr5eylemqwdgVyh95VLm81hSDpnGFpmNyiDnIkYBeHpN2B2hISg/K9GXnx00r5vQ
 IUbbwBx8qX5CaZYgISYW1iFAMK0Vhab3qyxEAshw/fWq7bQZhOtUUDV+p6Nqn1gO4eMo
 Ty2A7Hr8ZFBIz0Vn5PBFF4vc+udJiSDRMNtw4MvvCBoGhczcuGKgD6hzBjVFfa4Uhp6p
 JbwVKuF81dF4GS9jNcG3i+8mnP3qTg5iola/z+InULjrXaCeywbEBetX8GAn6l6kVr88
 i1lnJbmdemkkv0GIYNNfv7ExqowryUyzAw/XcMhP1galwqB7m6o37iI1l43sR/JKOzCK
 Kf5A==
X-Gm-Message-State: APjAAAV+wTSBb8ZSZON7CRdnszcDxiHF07SJjMwzRTqCFtgftdQxuYZ4
 fkRQhTSesarzT3+9yOefh/M=
X-Google-Smtp-Source: APXvYqxgC6sd1U98pbcxTf07u1K/+R9rTiNVfb+mdR78s7Y1SBK1yt41QPoPpYAt3hOvIRoCGwH0nA==
X-Received: by 2002:a17:902:9f8b:: with SMTP id
 g11mr103191162plq.199.1558738442607; 
 Fri, 24 May 2019 15:54:02 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id n21sm3531688pff.92.2019.05.24.15.53.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 15:54:01 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: fix memory leak for power latency tolerance req
To: Keith Busch <kbusch@kernel.org>
References: <20190517023007.140656-1-yuyufen@huawei.com>
 <0becf386-c4f5-b0f9-2d5f-84da0e58226c@redhat.com>
 <20190517183614.GB25092@localhost.localdomain>
 <258cd66e-9d54-6e5b-0dd5-9dbf0ba84dd8@grimberg.me>
 <20190524204444.GB17321@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7b71db31-3ef7-92a0-2a51-e372f864592d@grimberg.me>
Date: Fri, 24 May 2019 15:53:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524204444.GB17321@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_155403_864941_E5047DC3 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Yufen Yu <yuyufen@huawei.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, David Milburn <dmilburn@redhat.com>,
 "luto@kernel.org" <luto@kernel.org>, "hch@lst.de" <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Thanks, applied for 5.2
>>
>> This should probably be sent to stable as well...
> 
> Want to place bets on if stable-bot auto-selects it? :)
> 
> But yes, should apply to 4.14+.

Yea, just need to make sure that whoever picks this up tags it
for stable # 4.14+

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
