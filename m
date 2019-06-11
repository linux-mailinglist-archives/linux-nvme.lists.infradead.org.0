Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AC53C04E
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 02:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=tdKR990KfK9I7VlRPR4Kef9dy
	wcMH/SSZ/NrlcOnYZ2O9nCev4O0fccIXB/jap6Pcmv7ljaBIs1NlROBfFRcHdbdjuMujOskElZO4k
	AssyNiSeH/vgmdRPUkRJEOpEYNGx8/1hfEx0bL78OaMf2ZQ89/QjgD6GNyMEd3PaxuLy9ASihsEVf
	sdq60hro+WNI59UiY+Ccgy0ibViz71KaNflZ4i5EwbmVUWsFks2URbcGEajEX2mEOHIrOBOEY69Nw
	UKmR0aC3PdiDBy1XHByagkLn3lmufitQaSdgUyX3vQr26GHcYfPHcTvfq129LUaCugBCxcLCHqEQG
	aKbW3ammA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUGQ-0006id-Gs; Tue, 11 Jun 2019 00:03:46 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUGI-0006iE-Eu
 for linux-nvme@lists.infradead.org; Tue, 11 Jun 2019 00:03:39 +0000
Received: by mail-ot1-f54.google.com with SMTP id r21so10099850otq.6
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 17:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=RS714bodCaLqsS7jRyzajttjoQMx+oo3hwUNpW3ecB946kDio7zx6UTpUF97E170W5
 AOpasFwEH8t7ir6g7cLC4yHhtr9XFLXfAJYBDKclMFPW9UrblnjmGDXHjD5hTaSpGFLV
 9Yma3K4RrrN5xZoY7BYwr+s2p9dA/MuSgwgyJI0h6ZNPlr45ekvmvHmjcbrcbWZQbmX6
 g/s7cfU0+SWGoUOC/9OnKUQAoJSNWxtiAROZ4SKFA3IVkFMa/yMuZxXscwFdKyNLZt7D
 xGZLkpgDIDOfOkhZ2sleKzZPV+F7MWjVBKZOOFXi0D55JkLX3TFU6NyG1TRY0pKz5Lpa
 Xccw==
X-Gm-Message-State: APjAAAXDREaIzLseuPq8UcHv9H/mGegUSxynV6/8x5Eo28f49VRIa9M5
 XuTkON1BidUKs5B9Z5JaZbxj2MjP
X-Google-Smtp-Source: APXvYqwtb7sTnWFJ5c7yhucTnP3PljzjLbetuHHDbJ3Wf182dctS/qRxUwzLDyFCQeTQTsE5zspJPg==
X-Received: by 2002:a9d:3ba4:: with SMTP id k33mr31747097otc.68.1560211417336; 
 Mon, 10 Jun 2019 17:03:37 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b81sm5013822oia.38.2019.06.10.17.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 17:03:36 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: code cleanup
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190608201632.8244-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cbfdcdcc-60e7-565a-5ad1-0e4ad8e4d8de@grimberg.me>
Date: Mon, 10 Jun 2019 17:03:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608201632.8244-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_170338_506976_63613F69 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
