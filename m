Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1802666314
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=CqaGUqMj45FbZtjwV6afNt6eJ
	pmZKLBVXnyOEgZ9aBBVkM2vuJbAkqgETJd9EnbAiAHXkZ3LuwRhLrEGn+paOykxdkq/S7BGT0f5q/
	im94OfXIu/RASLpv95O8F2WUkQEtHk+6uj8n2aNJj1LAtazMpOvCoYopVDulRvXjH8yc94dtgJjkJ
	hG5OzW42eyyNGtP+HzpGHtWrn0iNtXT8Bq2i+3LJr84tPG9KDK5+oUCuWh/l03IDi7ErNH31749Mb
	J8RnFfjAhLZVyXwprLR+ec6oq0n5r1yposjK3ORgoHzP4tRIl0YS8AFTy/maAO5XElbeELhT5r/8i
	ypS9pk6CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljm6-0003vH-2K; Fri, 12 Jul 2019 00:50:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljlt-0003ud-No
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:50:46 +0000
Received: by mail-ot1-f67.google.com with SMTP id l15so7783124otn.9
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:50:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Xxiz6hguT3n+5BSN/ZWnPgkVNujStGuyOq935/HL13iqEkHFJj5wrAZyxMChlqM5HJ
 VipjJ54hSepRyQvEdihqUFn4QcGVw4eMPmJX9v7EwphxfxqacayXeNbHE/0U3GOFyPDx
 1LLSS1sMQx83CKAmP9FbHVMhiS/w0cTQqMUZVjkh36VK5Vzn9GDlKoVLvbM7S7dZMxzs
 CUvPxp5QusyBOUsU0ldZdr0OK0JP8lE2hZdibBdQIWRP/uFEK99Z9obBdOXD3UK12Has
 6LhuDcQR6dpGNBIDxIJA1lRl1KniPwygYgETywmOWBftfk7E9H9+7hRREFusOwhDgZkN
 /Tog==
X-Gm-Message-State: APjAAAWwBwDexM2a8nMw7sSCcdqrUno6sqbT23oWOAJJ7tc+/K9dxSid
 GBdyG+PROUF0YRrEITP8QMo=
X-Google-Smtp-Source: APXvYqxWPoaYSkcZteg4Il0uN56cLogSQ0CyoNcXHhbfTxLMC07qSST/G+UmekfT/qysoK0HKic/9Q==
X-Received: by 2002:a9d:7ad4:: with SMTP id m20mr2938929otn.78.1562892645175; 
 Thu, 11 Jul 2019 17:50:45 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a20sm2562284otl.44.2019.07.11.17.50.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 17:50:44 -0700 (PDT)
Subject: Re: [PATCH rfc v2 04/10] nvme-cli: Refactor to create a
 get_nvme_ctrl_info routine
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-5-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <34add454-ae2a-b2a6-256d-f4517d142922@grimberg.me>
Date: Thu, 11 Jul 2019 17:50:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-5-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_175045_770022_81A8BDEF 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
