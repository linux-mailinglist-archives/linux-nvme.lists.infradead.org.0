Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D737A3F62
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 23:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=N/Y6CqnssgBSzKACAW9Hsy0XR
	JumepVH2OeA0YnvQJBT/TqqfuGvNf6608UP1Hqy3uzl971wcnrEYyUVIBQgkhccux4eyKBZj0u1Ln
	tg768q0svTDMyrVR0Nj1ApKJ55UNKtrEnCxKWNqZutOOLu1oawt5VutfuzKCS70fqDSNsK9IiU7kN
	YbWzMtu5hneSBOkZtlnu9t/Qzq9m6CRVoNAmZJiIJK1LZVK06spWmoKZBdzlDQ7bVOZDIOIIOuhGe
	+tatbF3UKn3sbxNNvpaAOuNbI2PUyNbNaLp3+IV/QLJzCcyXGfUovyy/wux4lxQzrN3aY/St8bxws
	F5bjaInJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3o50-0003E9-Tu; Fri, 30 Aug 2019 21:05:10 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o4r-0002vl-AB
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 21:05:02 +0000
Received: by mail-wr1-f67.google.com with SMTP id y19so8269000wrd.3
 for <linux-nvme@lists.infradead.org>; Fri, 30 Aug 2019 14:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=WScotmcTOTU4cLW8RfIGhbke5dWONC/5TE72U/aHKzbOK1WTeBAcs0E6cSwooGgnYj
 j1VHTQDBsjm3cgkWBXMgY9bVLjr7WBr+3kePsDGOuKdLjoasUzJGxYYNNpHWSFB/Ah9e
 njxZp0rJqg/Cq7iBsAelI1SvAc0NxQSDkJInMourAjY/QizNah/rvfaWLXFGcHbIvPLt
 P7grtg+oww+Dwo5eVtrZ2r4HR+LqV2i47XTLZ8qz4NbjYaQiV2abM53h8zc63LRDsVV2
 Nc/BYr3Jgq4Uz1A5Npvu1nFzaMcvL3b5VafRmrAIL1ptDM+Fgg/BGDnLBWKRnJZ3os1X
 2ONg==
X-Gm-Message-State: APjAAAUAGSPKypyCzjITNzIJSnhQu+UKDSlt3kFmDmCO/8Ve3uzwTU3i
 /qeqcuekslWuLIuEM4K6gLAv9Bls
X-Google-Smtp-Source: APXvYqwTa8kFz5bUlmiw+JceooE7cDSji8dfLG3AAXJ9cZX+fAK9hpS+y/7+ADIGteAQVgfxEji5og==
X-Received: by 2002:adf:ed43:: with SMTP id u3mr8009134wro.37.1567199099543;
 Fri, 30 Aug 2019 14:04:59 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s1sm19053670wrg.80.2019.08.30.14.04.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 14:04:58 -0700 (PDT)
Subject: Re: [PATCH] nvme: Treat discovery subsystems as unique subsystems
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190830201145.6729-1-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3ead4881-5773-b987-464a-de3a770e87b0@grimberg.me>
Date: Fri, 30 Aug 2019 14:04:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830201145.6729-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_140501_354342_72DE5FA4 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
