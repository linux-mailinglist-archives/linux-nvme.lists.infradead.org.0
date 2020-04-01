Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF4919A583
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 08:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AVhSN+zlr9tgdNomj8zK1Jwmq/NvKpsZM1iGhTbBPvQ=; b=qN8p3jpWMtHSn5UJexckhnW/z
	BEYw8ixEIxiJkUJcJcc9POhol51DUykriS+gRl1YoQzeafTyjKMldSpWG55vkTK7qrV+ACdTrgEXs
	sfqmuYaRLwY/AiXhsxaaGF8BXhP0pgVsYL27G3kfMTjPCqBEVZBj+4u2v/cFNvptYRsgWaDEVvogw
	i7RpCGjq9jMAyRuvXWOhpjruatLMn4jNrfuj0xzD5EFkiIeLOoqCu3XI9v6jWfTAcQ+9aYqL8N8tH
	dICbbvYTjYFdrsqWKKAnH1XDM1RpNyTjpzjdnlmgNFvLE++8XKDHhxw2vvKgSuYmGC0g/LiuMAa4Q
	Xc7ORnaWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJX4b-0006dW-60; Wed, 01 Apr 2020 06:42:01 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJX4V-0006XW-OD
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 06:41:56 +0000
Received: by mail-pf1-f196.google.com with SMTP id k15so6505662pfh.6
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 23:41:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SIFih27POnS4Qlke9D9zg4tFziJSj89m6HS4DfSliu8=;
 b=Q2Tiw47fKZNXeO0t+6qMqxtqgS23LEtc+JYzf2vCGPjvW48qcet1VYwbg9k88ih+6r
 tvOQoXs/8IRtLvuLFlPRe/WcuTcBhUvfnqqd1JzjEvCa/RRpsYs5Axf5lCRU1cT/HzwE
 XYEPhGDSkwK/dXYhbbe/3FsfiRRFad3xRyvKRsqeYeUDxVKCez8hXC+vjtNiajHS60sU
 DQnBJ7hUoedaFiTsUlNahQWTlZKDSQ3Er7rLN3X2ht33X6mUhM+9hKLW3NPUfSPDT6mX
 3KqtvmHrs8Q2mq3XtJWcpTn1irzI7UiLHi5pamrdL0QfbaVSglRTN4YFefPseBn6e/TJ
 pWow==
X-Gm-Message-State: ANhLgQ2r2FqYDd5oXHH7VsfqGWj3esUmontQc5+spd1Ysyqcqz6uABRt
 TeNRxV+ctnImevP/z9h97p4=
X-Google-Smtp-Source: ADFU+vsKEbDsK5812D21T2JGpcvqVEOKM149+m4T99NhyNa+MvrG6AFbILlrd6KaxaRcX3/IIfcspQ==
X-Received: by 2002:a63:ef07:: with SMTP id u7mr20620913pgh.77.1585723314307; 
 Tue, 31 Mar 2020 23:41:54 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:cca1:4ce7:5ea6:1461?
 ([2601:647:4802:9070:cca1:4ce7:5ea6:1461])
 by smtp.gmail.com with ESMTPSA id q67sm812061pjq.29.2020.03.31.23.41.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 23:41:53 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: inherit stable pages constraint in the mpath
 stack device
To: Christoph Hellwig <hch@lst.de>
References: <20200401060625.10293-1-sagi@grimberg.me>
 <20200401063335.GA25619@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f722e4f4-214e-fc75-88dd-1bee3602e028@grimberg.me>
Date: Tue, 31 Mar 2020 23:41:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401063335.GA25619@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_234155_786091_06723EF0 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> If the backing device require stable pages, we need to set it
>> on the target as well. This applies to rdma/fc transports when
>> doing data integrity and tcp transport calculating digests.
> 
> target?? Seems like this propagates it to the multipath node.

typo..

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
