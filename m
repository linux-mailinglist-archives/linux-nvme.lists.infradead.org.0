Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC31D92B4
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 10:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=Nym/fnTMfjFpHwgoBGPmYoUdN
	1YiaF2HHF2rFf1VH5Lk5okGmMfGUmXsiPOvQZAMgxMLBwuBaZgW6PvJ2bDDOdgfmmWtFctQ6ksPrJ
	VJYcCu8AvhkUl+x2e2AnnnAlP/UQI8cmOdvkGoBlIp/HpfEEnDDyIMvNts0ow6T906Kx3ioSQakbd
	EQffT01grasXvnt0hchWFBC58Dj3mOrAu+FsfnHLgVpDuIdGYtDq95X1+aBeh3DycDAyXxCEbePkJ
	7AieWULdjGa3ePHXvLE3oUsDew+0KM/Sfb+bQVM5O5nrzycK/Iug1vzJ8xX5eYYeRabkinDm84ku/
	1upLTD52A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jay4J-0007f2-K3; Tue, 19 May 2020 08:57:47 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jay4C-0007eC-T0
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 08:57:42 +0000
Received: by mail-pg1-f195.google.com with SMTP id j21so6074844pgb.7
 for <linux-nvme@lists.infradead.org>; Tue, 19 May 2020 01:57:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=qvf7dDx5p1Z123U14AjJ6y4nbbE6d/6ERmnIPg/HsRBmZfexRyow6OIUZMFyOysoi0
 DO3Djvw5Gq7BVH2PVv1uKRXwAU32u/XXyqoFXfjZSRgjWBBOTZdtGeRehdSRrcUkys97
 XJLLrwPKv3Q/XNMuK7QlWulgWcfxpcw6Wv6EM+FkFj4Decpv/TYxMj3vszTM25PA81CO
 STW7e+tdLcyaFtLCvprJvhRE6kuwZ5F67EURQWVArM9rk3hRK0482WXiMdpfbIaO6XpA
 Fh6TUlrOt0W+ohM3FBA1UR9sRrV+LbePLWoRjJm+QpbttJqSUPiD6n6JjcYuLDkVjPFZ
 YnnQ==
X-Gm-Message-State: AOAM533si9+jPfDFUehUBRnaa4UVWXCzNeV7m3SMNRU1phr0fkTL8cQ5
 qr5I/5TfoyDb6qGt2EQtqBHPvxhJTT8=
X-Google-Smtp-Source: ABdhPJwBljJbXdcFSWVZWNfcI7VgF7cpki6qLfsBHrUxJZQ3U3abqFXkTpgcpYYSvpbUjE8KzbDFTw==
X-Received: by 2002:a63:7a12:: with SMTP id v18mr17996716pgc.131.1589878659691; 
 Tue, 19 May 2020 01:57:39 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:507e:6065:a37d:f691?
 ([2601:647:4802:9070:507e:6065:a37d:f691])
 by smtp.gmail.com with ESMTPSA id k65sm10827875pfd.156.2020.05.19.01.57.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 01:57:39 -0700 (PDT)
Subject: Re: [PATCH V4 3/4] nvmet: revalidate-ns & generate AEN from configfs
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
References: <20200519080630.3500-1-chaitanya.kulkarni@wdc.com>
 <20200519080630.3500-4-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5ecaf2f6-6c06-f68d-00c8-32cb82e9435a@grimberg.me>
Date: Tue, 19 May 2020 01:57:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519080630.3500-4-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_015740_937494_E4FF1263 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
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

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
