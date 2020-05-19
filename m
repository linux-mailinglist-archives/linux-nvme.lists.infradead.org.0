Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C181D926F
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 10:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d7n2xj+8C45k+gFZNGyAV7ibRGkor9o9RnymHD5vlKg=; b=R5A/HxGcW6d8/hbNKWGRkRZ1o
	JObGmgnIgIuE90Bi+fuc3DMoQ144ykfghHbhJ9KUSM9L+IWNv+awcp1txTm+GmJYhxvM40C2ebgIY
	f6f2LHWoREJg8HvbfoNRm3vLFnaTaD2LBS8ggHrl3n/41R1fL4bbz7h8L9K4wEkj3+Ab7lS+ntFqz
	BFNKi7FhMaUuAJRU8f6XjP2VFFNLr+NBkurzDoQQq9ZhSNruXI1J7EOu7cGcYnU0iPZsv0Md0vAGX
	GTz4vmx2m03owmBIOo1OVsMqUDOl8vErTBI87Pb0au389PVC0YKTrv8wUMHO9GP3MrJWR6/79+jmR
	DUWIBOR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxwD-0001Bo-3z; Tue, 19 May 2020 08:49:25 +0000
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxw9-0001BS-3Z
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 08:49:22 +0000
Received: by mail-pj1-f68.google.com with SMTP id nu7so1029450pjb.0
 for <linux-nvme@lists.infradead.org>; Tue, 19 May 2020 01:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Xq4tP4r1IsI/qPQ1Mn56qc+Vd6jwxpivyMTbW8GjXNw=;
 b=V6OLrxujeri62Trt8s91jaFACUDnIQ5bFh1Mq7JaGBQYc3ydeRAChqHkP3+2xplxuM
 c2XiC2k1MOUhotNRE4UDOmKGYE4NPuPDB7Vzg5I+Akwk+7jfXRa15tzVL2FR7X3LzUXt
 AwwRHOER/lzzBP77HNDQmVyy/gGOgS8w0J9vCjONacj8siCOLfe2hPphXOuAg5kD4Dnn
 15kVHXNmizzzM70GEc+SkHr2q1+bH9BtrciZvVCtPcIE4hI0SAr63Ec+WrpN/dpKD5op
 0UrR03RktUaJVOp/INblEjDzl2FWoZQOLTsG5NKSxXJ57BUgVgq1Ntnbq7ia/vM/VuW5
 382Q==
X-Gm-Message-State: AOAM533t2iFaA+4IsSSTxZAclN9ZoSbJYpQRoXoxEgxfuamvvC+vtTe0
 H45Ds9DSWLhaEhj8TMjy3lNT2gUzFzY=
X-Google-Smtp-Source: ABdhPJx/t5cRfx1fp8MC3Q5WmbJ5VkPr+3nCOuq9Px+iJqBgAZy+vOWClgUArC0PLD5b5aFEw8xHGA==
X-Received: by 2002:a17:90a:7108:: with SMTP id
 h8mr3917591pjk.105.1589878159968; 
 Tue, 19 May 2020 01:49:19 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:507e:6065:a37d:f691?
 ([2601:647:4802:9070:507e:6065:a37d:f691])
 by smtp.gmail.com with ESMTPSA id q44sm1083239pja.29.2020.05.19.01.49.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 01:49:19 -0700 (PDT)
Subject: Re: [PATCH V4 1/4] nvmet: add helper to revalidate bdev and file ns
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
References: <20200519080630.3500-1-chaitanya.kulkarni@wdc.com>
 <20200519080630.3500-2-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <527ed6b5-7b4d-2425-aafc-a6d19711cd64@grimberg.me>
Date: Tue, 19 May 2020 01:49:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519080630.3500-2-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014921_147746_F90D5BF2 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimbeg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
