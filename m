Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D001E1C1A3A
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 17:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=MxNuZlO8mPOuJKJsre/tovCo6
	u00cYdidxUbhR9iSveYmQ8v1lM6JZtwBSNSR1rzgLsz65qtUoWL87h60O+Z81W3NFnVU1RWBMDifg
	8WQtwlu9KIbHXVleLP7rpwo3bPx8URplrVtBxktsWzuqLAyiW9ziWU1mePpfGoDV8ef0MgfnJ9I+A
	lquvq9GlgddarFYbUR0+kCORRv3+lNRZ4/tEJd5+UQiZtH9PdK3YEampwbL0kx0o0D3tazea0Hg6l
	hmmHKfCZecTv8j4VTbIFOwNXKMrvUxZeiFHIXrRSO8tcwBM7oqj5NUfZBag8vpODYMFbKdLJnwebc
	fg7S7+0MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUY3Y-0005K0-M6; Fri, 01 May 2020 15:58:28 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUY3R-0005Ij-Jo
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 15:58:24 +0000
Received: by mail-pf1-f194.google.com with SMTP id x15so1759306pfa.1
 for <linux-nvme@lists.infradead.org>; Fri, 01 May 2020 08:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=O0qxKJMtTIoFrJW0bY9L0lEDz8VUWusgkwJuB1hg/gMCDThKmukV4TMGtwM+/fUyh3
 eC63AJ31LQj59t7JzKBPWH7o9NyCU+Q5xj8QCLqfXeUuJhRtQ4oWo59bUOMlqqY4DV/4
 dAAcM4jSOtDRWRFr7IoKrJkVjXt7oJETEbtLy38ntNRkfFw6EYocMq5gTjGeF0iIhkvu
 JfBM+3rNHhGurpH0asnKwQdVNlyvTEeAeHVhmOea5hvuKae12lIlF0Ch4sSOy21uypSr
 KuQDjMgFZMmWTyYu1SK16i9RR3r1j7nT5e1RWygS2R06qNEzqC1OqXjZUlTGbOeh9JuV
 A3CA==
X-Gm-Message-State: AGi0Pubi+E2moSRB2eB80rDXdLQY8ki5uao+hfUotF3xh54I3PCjMdHu
 PIKBR3tkB4PRTtjhzjb8fglBtuFc
X-Google-Smtp-Source: APiQypIRnzZOzWylca3oSROMFi5grStmRWG4IrUOekUPB/5yliR9IT6O0OX9IDBjUJjEpzQ1y7hWEw==
X-Received: by 2002:a63:5907:: with SMTP id n7mr4663532pgb.439.1588348700357; 
 Fri, 01 May 2020 08:58:20 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:4c3:8135:9a7c:5f17?
 ([2601:647:4802:9070:4c3:8135:9a7c:5f17])
 by smtp.gmail.com with ESMTPSA id o6sm2596015pfp.172.2020.05.01.08.58.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 08:58:19 -0700 (PDT)
Subject: Re: [PATCH] nvme-multipath: stop using ->queuedata
To: Christoph Hellwig <hch@lst.de>, kbusch@kernel.org
References: <20200501130825.2627529-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a8954836-e846-c9a2-7604-84b8070a7d03@grimberg.me>
Date: Fri, 1 May 2020 08:58:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501130825.2627529-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_085821_646759_93E6D27A 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
