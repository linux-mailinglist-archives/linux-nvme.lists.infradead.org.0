Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08D11ED7D3
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jun 2020 23:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=Y7q2QCi/v8tnmGqEvBNwJo4rK
	ZxF+wQYsjn6X9hIxy+7bximAR8mc3hPzJPDsoCgTjk02mIAsuKm9Y4tdA6sdir+9gV/iJ/sAoaJXh
	GQII9h7K0UYJd1sJtI1Cx9Qi+b7UJ/hqVu6UboZ5kv1VlwjZaxSbRyR6dIIxklUpdifUu4uZ/ZmTE
	ayr5p7SWW+ciVx3f3V8GSg6z/QRj5w5yUsETMMqi7HXnnoDSUdiYjGi6OnmiGodgGBdVOTHcajdww
	khq3MXcHJH1B2TIkvW3vmy05TVTWxyriH+30uEypctRaquKuCrT1RdGdVDBEsVmNMZV6AaQC7SEiL
	QmIXFhYPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgacA-0000sA-Ts; Wed, 03 Jun 2020 21:07:58 +0000
Received: from mail-pj1-f48.google.com ([209.85.216.48])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgabo-0000f5-6L
 for linux-nvme@lists.infradead.org; Wed, 03 Jun 2020 21:07:43 +0000
Received: by mail-pj1-f48.google.com with SMTP id q24so133677pjd.1
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jun 2020 14:07:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=egjArfghUf6a3Fowi0kaDS5Hjc20YaslAKF0MRJq6OgxapiKxB11pGxsUeSwLdHFDY
 eBrFmR9d+WsxpLJXDeAFKahkYZFO3YigBxxebQYtHLwUH8ul0Q+pkMk77Yae98N7DbG6
 7uLJCMJKzydF37sRpJ4zyz4kmOz9CTXN+XD7j8MYbRtxO+6D5pLIeRQCa++UvqKxY6Zu
 8HIgAhMT1qgasaoz+nD3ERAgGhi7FyiJihCXQXiTKl5uvbgvd0iO8v6d4ctQYebcsxad
 fGQfHo4ARyFWCA3IiiDw1VLuTaRzIpHlmco6NwZX3KTWOzO1U2/F71odCCdFxFJIUkAG
 ejxw==
X-Gm-Message-State: AOAM53033oV5r80WLHpDTxC8QEsxIrctNpeEd7JU/ZgYttYFrBagwKs3
 y0vQcbSAltmxHh4cvSsiQwo=
X-Google-Smtp-Source: ABdhPJyDksIipk8QB5P+i0gG/E+k+mBGlojbfq2tQyZTW6Eh/vJJd0PF863qFg5AyxFukr4tpP9J1g==
X-Received: by 2002:a17:90a:224a:: with SMTP id
 c68mr1875803pje.21.1591218455252; 
 Wed, 03 Jun 2020 14:07:35 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5409:1488:6d95:bdff?
 ([2601:647:4802:9070:5409:1488:6d95:bdff])
 by smtp.gmail.com with ESMTPSA id i3sm2621015pfe.44.2020.06.03.14.07.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 14:07:34 -0700 (PDT)
Subject: Re: [PATCH 4/4] nvme-pci: code cleanup for nvme_alloc_host_mem()
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200602024114.5153-1-chaitanya.kulkarni@wdc.com>
 <20200602024114.5153-5-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8664e40a-8d1b-0c82-df58-44681658a098@grimberg.me>
Date: Wed, 3 Jun 2020 14:07:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200602024114.5153-5-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_140736_242478_26F01EF1 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kbusch@kernel.org, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
