Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7CC1BB28E
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 02:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nZi7FAOYGvwX8D7NZ/aMBA6WuG/6QBAcfKCiyc3dOFE=; b=OFs
	NT2VWx2ey+dIgubnxg3qiYF+e4KsKUcMvkovNhZEKKaETAt2rXRXrn8T4zP+MSGr2eHYbC9LsuceS
	aWS/LiznVMUbimEBx0o4KHRx8EezcKTgihc0mPUuLaTtWQFaI6LKhCJ1FMy8s1B38CESIjFmz4Vl/
	+DRWjJyxXNiYdTUPQOlWsOSG6Tp1B6fivURu0epnUJFgfhlj5mYMQwNBHujcDfHJk7iQ/upBlauzJ
	hOqoKAqL+GyPssXyJ9oU2NfuTua3k6TArOOXXMS/pQv1ZUrZ34DhGwFJdfjjUtXtVKrCZp4Z4gu9/
	p5yLaKJmCArKyV1JidMOUSivH0GY2Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDq4-0003Nl-HD; Tue, 28 Apr 2020 00:11:04 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDq0-0003Mx-Os
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 00:11:02 +0000
Received: by mail-ot1-x32e.google.com with SMTP id g19so29594565otk.5
 for <linux-nvme@lists.infradead.org>; Mon, 27 Apr 2020 17:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aeoncomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=AygXDz8UtzEBfZ9vtMsrnqnro3jylpHWUooqHhcrBhs=;
 b=SlF6cZXVcuErbOD8MgEo90JX4q7WWYAyO6Ohcql9vLwwntB1jFHYQ8BmF3AqFhGb7b
 qtxht3zEr6MbMca3O7PnR85JUW/CzaPzZNYyTDgVuFkp4FgB368n4k3aG6dGlksDBH/J
 Oubg+VnUjVarEirkWA+4j3/MURkXq4eYf7+PedB5eRo0QJRRYPKmeZEeYa0d44MML1ZK
 5kXoWkfD8xdtRmo1UQ1rndqA5juy/GNBe9i8+8Qijb+09Ltz0nLP29fkb9Pd9yEa47+5
 iLfGKdYi6I4zAyRQr4Q6VWPUYtYuY5jOrxI/m3epLIJjB3Ir0nbKQHz6NhdMOzFOJjB0
 ry4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AygXDz8UtzEBfZ9vtMsrnqnro3jylpHWUooqHhcrBhs=;
 b=oyH/zBGccusG+NuqNtqvJoG9qz80mgOfcOCWWYxL32zgymwBadQ/YadDC+IB15Dz0y
 Q7y5luDFA0UuXyOaM0uwo7Njo37Bk3Ou9NeLFpMFlAKnJ3E7RWuo2R2rHYfnlb+ocJko
 ung8AwzEKn1XhfnMxGHwACcJtjlPnDK4BV6cWOWrKTfQt49LkFUt0P39Ji7GQaNbLpfV
 c0K6Qi6pz5Wnpoh5ARu9IpTGy16SaQ8Jz2ywJqcGH4BcuzqzCHHxA0UqLvIh00LLB/Qc
 eEYZ2Zv8/eRMxhm0mdF3xYAeYGLdJe8mFPt/IIHgufA6K/p/jI/7wQAMaWD8eL/I2M/X
 h4/g==
X-Gm-Message-State: AGi0PuZll0IqTUxafQbWpJ3uf4hpns4QiafUD6a8nLhUbACFIXWpRbeG
 Ski963cz2ylC/Ws0oQwtEvmT1+1qAWx4ZEzVQV8nvIhX
X-Google-Smtp-Source: APiQypIgom5r/LbpZJ9OJx+s1XE43H+2ElK2h/1yYbI1japSYcXpJ2IYLpHG9fEOzm3YmxzpWIqBrOBVKhwSryD1LxQ=
X-Received: by 2002:aca:220a:: with SMTP id b10mr1098767oic.36.1588032658171; 
 Mon, 27 Apr 2020 17:10:58 -0700 (PDT)
MIME-Version: 1.0
From: Jeff Johnson <jeff.johnson@aeoncomputing.com>
Date: Mon, 27 Apr 2020 17:10:47 -0700
Message-ID: <CAFCYAscnovJyA0cKeHVxS20+zGgMj4P5ECb95aZE8=o=Wh+5bg@mail.gmail.com>
Subject: Pinning nvme interrupts to a single cpu?
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_171101_008568_411EDDED 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Greetings,

Is it possible to limit nvme interrupts to a single cpu, rather than
spread them across many? I have a latency sensitive workload and I am
trying to do the opposite of what many appear to be doing, I need to
assign interrupts to a small number of cpus (one for nvme, one for
Ethernet, etc) leaving the bulk of my cpus for the application.

Single nvme drive which is both boot and application local storage.
Performance is nice but in my case it's more important to pin the
interrupts to one cpu even if local nvme performance decreases.

Thx,
--Jeff

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
